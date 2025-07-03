import 'package:flutter/material.dart';
import 'package:gestion_visiteurs/screen/home.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginScreen(),
  '/home': (context) => HomeScreen(),
  // Ajoute d'autres routes ici
};

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(child: Text('Login Screen')),
    );
  }
}
