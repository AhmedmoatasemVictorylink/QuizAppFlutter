import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 12) {
      resultText = "You are awesome";
    } else if (resultScore <= 16) {
      resultText = "You are awesome";
    } else {
      resultText = "You are awesome";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPhrase,
           style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
            ),
        TextButton(
           onPressed: resetHandler,
           child: Text("Restart quiz"),
           style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue))
        )
      ],
    ));
  }
}
