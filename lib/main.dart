import 'package:flutter/material.dart';
import 'package:form_validation/Registerscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 47, 79, 50),
          ),
        ),
        appBarTheme: const AppBarTheme(
            color: Colors.lime,
            iconTheme: IconThemeData(
              color: Color.fromARGB(255, 47, 79, 50),
            ),
            titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 47, 79, 50),
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
      ),
      home: const RegisterScreen(),
    );
  }
}
