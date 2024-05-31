import 'package:flutter/material.dart';
import 'package:roll_dice_trial2/styled_text.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentState = "assets/images/dice-1.png";

  void rollDice() {
    //...
    var randomizer = Random().nextInt(6) + 1;
    setState(() {
      currentState = "assets/images/dice-$randomizer.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentState,
          width: 200,
        ),
        const SizedBox(
          height: 27,
        ),
        TextButton(
            onPressed: rollDice, child: const StyledText("Roll The Dice"))
      ],
    );
  }
}
