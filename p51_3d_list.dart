import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nf/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.teal, elevation: 10),
      ),
      home: splashscreen(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  var arrayindex = <String>[
    "Stay positive.",
    "Drink more water.",
    "Take deep breaths.",
    "Keep moving daily.",
    "Eat clean foods.",
    "Sleep 8 hours.",
    "Smile often.",
    "Focus on growth.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Daily Boost',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 58, 87, 249),
      ),
      body: ListWheelScrollView(
        itemExtent: 200,
        children: arrayindex
            .map(
              (value) => Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 73, 252),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '${value}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
