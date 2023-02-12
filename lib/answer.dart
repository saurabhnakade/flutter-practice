import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function clickHandler;
  final VoidCallback clickHandler;
  // VoidCallback : takes in nothing and returns nothing
  final String text;

  const Answer(this.clickHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(text),
        onPressed: clickHandler,
      ),
    );
  }
}
