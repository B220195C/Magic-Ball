import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything',
            style: TextStyle(fontFamily: 'Alkatra',
            ),
          ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.cyanAccent, Colors.lightBlueAccent, Colors.blue, Colors.cyan, Colors.blueAccent, Colors.lightBlue, Colors.cyanAccent],
        ),
      ),

      child: Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            random();
          });
          print('ballNumber : ' + '$ballNumber');
        },
        child: Center(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    ),
    );
  }

  void random() {
    ballNumber = Random().nextInt(5) + 1;
  }
}



