import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice App',
          ),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset('images/dice1.png'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              flex: 1,
              child: Image.asset('images/dice2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
