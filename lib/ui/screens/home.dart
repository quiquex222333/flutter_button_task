import 'package:button_task/ui/widgets/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons task", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: const Body(),
    );
  }
}