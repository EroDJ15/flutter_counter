import 'package:counter_app_1/presentation/screens/counter/counter_functions_screen.dart';

///import 'package:counter_app_1/presentation/screens/counter/counter_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Remove the debug mode banner
        theme: ThemeData(
          colorSchemeSeed: const Color(0xFF800060),
        ),
        home: const CounterFunctionsScreen());
  }
}
