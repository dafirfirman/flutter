import 'package:flutter/material.dart';
import 'welcomeScreen.dart';
import 'loginScreen.dart';
import 'registerScreen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pembelajaran Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          WelcomeScreen(),
          LoginScreen(),
          RegisterScreen(), 
        ],
      ),
    );
  }
}
