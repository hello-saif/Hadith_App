import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package
import 'Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hadith_App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HadithDetailsPage(),
    );
  }
}
