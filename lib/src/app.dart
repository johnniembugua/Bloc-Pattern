import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {

    return Provider(
      child:MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    ),
    );
    
  }
}