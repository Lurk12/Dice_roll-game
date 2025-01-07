import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

 @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
  }
}

  final randomizer = Random();
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;
  @override
  Widget build(BuildContext context) {
   return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              TextButton(
                  onPressed: () {
                    
                    setState((){
                    currentDiceRoll = randomizer.nextInt(6)+1;
                    });                    
                  },
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(top: 20),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 28)),
                  child: const Text('Roll Dice'))
            ],
          );
  }
}