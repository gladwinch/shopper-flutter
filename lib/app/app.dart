import 'package:flutter/material.dart';
import 'package:shopper/presentation/resources/theme_manger.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}