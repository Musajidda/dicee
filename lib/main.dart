import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftButton = 4;
  var rightButton = 5;
  void changeDice() {
    setState(() {
      setState(() {
        leftButton = Random().nextInt(6) + 1;
        rightButton = Random().nextInt(6) + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image(
                image: AssetImage('images/dice$leftButton.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image(
                image: AssetImage('images/dice$rightButton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
