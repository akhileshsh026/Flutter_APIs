import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter Akhielsh',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter from Appbar title'),
        ),
        body: new Center(
          child: new Text("Akhilesh r u in center."),
        ),
      ),
    );
  }
}