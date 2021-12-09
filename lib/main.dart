import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Iamges(),
      ),
    ),
  );
}

class Iamges extends StatefulWidget {
  @override
  _IamgesState createState() => _IamgesState();
}

class _IamgesState extends State<Iamges> {
  int imageschange = 1;

  void changeImages() {
    setState(() {
      imageschange = Random().nextInt(16) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeImages();
              },
              child: Image.asset('images/$imageschange.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
