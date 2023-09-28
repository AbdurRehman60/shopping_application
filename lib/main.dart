import 'package:flutter/material.dart';
import 'package:shopping_application/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Devil',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Gordita',
          textTheme: const TextTheme(
              headlineMedium: TextStyle(color: Colors.black54))),
      home: const HomeScreen(),
    );
  }
}
