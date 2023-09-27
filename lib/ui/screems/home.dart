import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons task"),
        backgroundColor: Colors.blue,
      ),
      body: const Text("here"),
    );
  }
}