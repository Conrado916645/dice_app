import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                    child: Image.asset('images/dice1.png'),
                  )),
              Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice1.png'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
