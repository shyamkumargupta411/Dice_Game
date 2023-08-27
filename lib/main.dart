import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dices'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int i=2;
  int j=2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(onPressed:() {
              setState(() {
                i=Random().nextInt(6);
              });
            },child: Image.asset('images/dice$i.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                 setState(() {
                   j=Random().nextInt(6);
                 });
                }, child: Image.asset('images/dice$j.png')),
          ),
        ],
      ),
    );
  }
  }


