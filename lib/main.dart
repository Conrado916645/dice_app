import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = new Random();
  var left_dice_number = 1;
  var right_dice_number = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice Game',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                onPressed: () {
                    randomNumber();
                },
                child: Image.asset('images/dice$left_dice_number.png'),
              )),
              Expanded(
                  child: FlatButton(
                onPressed: () {
                    randomNumber();
                },
                child: Image.asset('images/dice$right_dice_number.png'),
              ))
            ],
          ),
        ),
      ),
    );
  }

  void randomNumber() {
    setState(() {
      right_dice_number = random.nextInt(6) + 1;
      left_dice_number = random.nextInt(6) + 1;
    });
  }
}
