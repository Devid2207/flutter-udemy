import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(2) + 1;
                  });
                },
                child: Card(
                  child: Text(
                    "only YES/NO",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Card(
                    child: Text(
                      "Multiple",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  )),
            ],
          ),
          Image.asset('images/ball$ballNumber.png'),
        ],
      ),
    );
  }
}
