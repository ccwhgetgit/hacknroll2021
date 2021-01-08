<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:trial/MyHomePage.dart';
=======
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hacknroll2021/pages/registration_page.dart';
import 'package:hacknroll2021/services/auth.dart';
import 'pages/login_page.dart';
import 'package:provider/provider.dart';
import './models/user.dart';
import './widgets/loading.dart';
>>>>>>> master

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
<<<<<<< HEAD
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cycled',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText',
      ),
      home: new MyHomePage(),
=======
  @override
  Widget build(BuildContext context) {
    // Once complete, show your application
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return Loading();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider<CurrentUser>.value(
            value: AuthService().user,
            child: MaterialApp(
              title: 'CHAKmate2021',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: RegistrationPage(),
              routes: {
                RegistrationPage.routeName: (ctx) => RegistrationPage(),
              },
            ),
          );
        }

        return Loading();
      },
>>>>>>> master
    );
  }
}
