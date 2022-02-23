import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[600],
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Center(child: Text('Ask Me Anything')),

          ),
          body: ball(),
        ),
      ),
    );
class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballnum = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballnum = Random().nextInt(5)+1;
              });
            },
            child: Image(image: AssetImage('images/ball$ballnum.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

