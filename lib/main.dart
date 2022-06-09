import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  const app = Test();
  runApp(app);
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(child: HeyThere()),
      ),
    );
  }
}

class HeyThere extends StatefulWidget {
  const HeyThere({Key? key}) : super(key: key);

  @override
  State<HeyThere> createState() => _HeyThereState();
}

class _HeyThereState extends State<HeyThere> {
  final Random _random = Random();

  Color? _color;

  void changeColor() {
    setState(() {
      _color = Color.fromRGBO(
          _random.nextInt(256), _random.nextInt(256), _random.nextInt(256), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeColor,
      child: Center(
        child: Text(
          'Hey there',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: _color),
        ),
      ),
    );
  }
}
