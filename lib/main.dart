import 'dart:io';
import 'Quizz.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizBody(),
    );
  }
}

class QuizBody extends StatefulWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

QuizBrain questionTitle = QuizBrain();
List<Icon> mylist = [];

class _QuizBodyState extends State<QuizBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Center(
                    child: Text(
                      questionTitle.getquestion(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    setState(() {
                      if (questionTitle.getanswer() == true) {
                        mylist.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        mylist.add(Icon(Icons.close, color: Colors.red));
                      }
                      questionTitle.isFinished();
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      'true',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    setState(() {
                      if (questionTitle.getanswer() == true) {
                        mylist.add(Icon(Icons.check, color: Colors.green));
                      } else {
                        mylist.add(Icon(Icons.close, color: Colors.red));
                      }
                      questionTitle.isFinished();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'false',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10), child: Row(children: mylist))
            ]),
      ),
    );
  }
}
