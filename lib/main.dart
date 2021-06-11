import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ballChange(),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueGrey[800],
        ),
      ),
    );
  }
}

class ballChange extends StatefulWidget {
  @override
  _ballChangeState createState() => _ballChangeState();
}

class _ballChangeState extends State<ballChange> {
  int ballClicked = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          child: Image.asset('images/ball$ballClicked.png'),
          onPressed: () {
            setState(() {
              ballClicked = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
