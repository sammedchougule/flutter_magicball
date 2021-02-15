import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, //body background color
      appBar: AppBar(
        backgroundColor: Colors.blue, //appbar background color
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBallImage () {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          changeBallImage();
        },
      child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
