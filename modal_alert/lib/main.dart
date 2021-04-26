import 'package:flutter/material.dart';
import 'package:modal_alert/views/modal_alert.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modal Alert',
      debugShowCheckedModeBanner: false,
      home: ModalAlert(),
    );
  }
}
