import 'dart:math';
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

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int num = 2;
  int numm=1;
  void numi()
  {
    setState(() {
      num=Random().nextInt(6)+1;
      numm=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              splashColor: Colors.orangeAccent,
              onPressed: () {
               numi();
              },
              child: Image.asset('images/dice$num.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              splashColor: Colors.black,

              onPressed: () {
                numi();

              },
              child: Image.asset('images/dice$numm.png'),

            ),
          ),
        ],
      ),
    );
  }
}
