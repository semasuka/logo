import 'package:flutter/material.dart';
import 'dart:ui';
import 'quizz_brain.dart';

QuizBrain quizBrain = new QuizBrain();
int corrAnswerCount = 0;

void main() {
  runApp(Logo());
}

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {

  @override
  Widget build(BuildContext context) {
    //TODO: use clean close and main OOP concept

    //TODO: Stop the loop and display a pop up to display the total with a music while poping up the window

    corrAnswerCount = quizBrain.getCorrectAnswerCount();
    quizBrain.randomization();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Logo quiz'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Score Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 100.0,
                      ),
                      Positioned(
                        right: 37,
                        top: 35,
                        child: Text(
                          '$corrAnswerCount',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              // Logo
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  child: Image.asset(
                    quizBrain.getLogoBank(quizBrain.getCount()),
                    height: 300,
                    width: 500,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Question Text
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container(
                  child: Text('To which company this logo belongs to?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              // Multiple choice
              //TODO: fill the the botton red or green if the answer is correct or not
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text(
                          quizBrain.getRandomizedBrand()[quizBrain.getCount()][0],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.getCorrectAnswer(quizBrain.getCount()) ==
                                quizBrain.getRandomizedBrand()[quizBrain.getCount()][0]) {
                              quizBrain.getIncreasedCorrectAnswerCount();
                            }
                          });
                          quizBrain.nextQuestion();
                          quizBrain.getIncreasedProgress();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text(
                          quizBrain.getRandomizedBrand()[quizBrain.getCount()][1],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.getCorrectAnswer(quizBrain.getCount()) ==
                                quizBrain.getRandomizedBrand()[quizBrain.getCount()][1]) {
                              quizBrain.getIncreasedCorrectAnswerCount();
                            }
                          });
                          quizBrain.nextQuestion();
                          quizBrain.getIncreasedProgress();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text(
                          quizBrain.getRandomizedBrand()[quizBrain.getCount()][2],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            if (quizBrain.getCorrectAnswer(quizBrain.getCount()) ==
                                quizBrain.getRandomizedBrand()[quizBrain.getCount()][2]) {
                              quizBrain.getIncreasedCorrectAnswerCount();
                            }
                          });
                          quizBrain.nextQuestion();
                          quizBrain.getIncreasedProgress();
                        },
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                      child: Text(
                        quizBrain.getRandomizedBrand()[quizBrain.getCount()][3],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                      splashColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          if (quizBrain.getCorrectAnswer(quizBrain.getCount()) ==
                              quizBrain.getRandomizedBrand()[quizBrain.getCount()][3]) {
                            quizBrain.getIncreasedCorrectAnswerCount();
                          }
                        });
                        quizBrain.nextQuestion();
                        quizBrain.getIncreasedProgress() ;
                      },
                    ),
                  ),
                ],
              ),
              // progress bar
              quizBrain.getProgressBar(),
            ],
          ),
        ),
      ),
    );
  }
}
