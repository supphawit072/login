import 'package:flutter/material.dart';
import 'Welocme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CS APP",
      home: Welcompage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
