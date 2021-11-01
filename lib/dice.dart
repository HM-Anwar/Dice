import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDice(){
    setState(() {
         rightDice = Random().nextInt(6) + 1; //It's start from 0
                    leftDice = Random().nextInt(6) + 1;  
        });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: changeDice,
                child: Image.asset("assets/images/dice$leftDice.png")),
          ),
          Expanded(
            child: TextButton(
                onPressed: changeDice,
                child: Image.asset("assets/images/dice$rightDice.png")),
          ),
        ],
      ),
    );
  }
}
