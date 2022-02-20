import 'package:flutter/cupertino.dart';

class Question {
  String question;
  bool answer;

  Question(this.question, this.answer);
}

class QuizBrain {
  int currentIndex = 0;

  List<Question> _questionBank = [
    Question('orange is blue', false),
    Question('triangle has 4 edges', false),
    Question('1+1=2', true),
    Question('year is 365 days', true),
    Question('ana etshaleet mn el coding', true)
  ];
  String getquestion() {
    return _questionBank[currentIndex].question;
  }

  bool getanswer() {
    return _questionBank[currentIndex].answer;
  }

  void isFinished() {
    if (currentIndex == _questionBank.length - 1) {
      currentIndex = 0;
    } else
      currentIndex++;
  }
}
