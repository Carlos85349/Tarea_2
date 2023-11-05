import 'package:flutter/material.dart';
import 'package:tarea_2/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "contacto",
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home": (BuildContext context) => const Homepage(),
      },
    );
  }
}