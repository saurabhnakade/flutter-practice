import 'package:first_app/answer.dart';
import 'package:first_app/final.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qI = 0;
  var score = 0;

  void _answerQ(int s) {
    score += s;
    setState(() {
      _qI = _qI + 1;
    });
  }

  void _reset() {
    setState(() {
      _qI = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qI < questions.length
            ? Column(
                children: [
                  Question(questions[_qI]['questionText'].toString()),
                  ...(questions[_qI]['answers'] as List<Map<String, Object>>)
                      .map((answer) {
                    return Answer(() => _answerQ(answer['score'] as int),
                        answer['text'].toString());
                  }).toList(),
                ],
              )
            : Final(score, _reset),
      ),
    );
  }
}
