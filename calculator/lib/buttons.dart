// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, this.color, this.textColor, required this.buttonText, this.buttonTapped});

  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: color,
              child: Center(
                child: Text(buttonText,
                    style: TextStyle(color: textColor, fontSize: 25)),
              ),
            )),
      ),
    );
  }
}
