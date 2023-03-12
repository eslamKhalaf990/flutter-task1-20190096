import 'package:flutter/material.dart';
import 'Views/SignIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("images/"
        "sign_in.jpg"), context);
    return MaterialApp(
      title: 'Sign In',
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SignIn(),
    );
  }
}