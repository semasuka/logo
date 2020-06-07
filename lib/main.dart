import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

void main() {
  runApp(Logo());
}

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  //TODO: use clean close and main OOP concept
  double progress = 0;
  int count = 0;
  int correctAnswerCount = 0;
  List<String> logoBank = [
    'images/1-apple.png',
    'images/2-facebook.png',
    'images/3-google.png',
    'images/4-microsoft.png',
    'images/5-amazon.png',
    'images/6-walt-disney.png',
    'images/7-toyota.png',
    'images/8-mcdonald.png',
    'images/9-dominos.png',
    'images/10-nike.png',
    'images/11-shell.png',
    'images/12-mercedes-benz.png',
    'images/13-audi.png',
    'images/14-pepsi.png',
    'images/15-gucci.png',
    'images/16-starbucks.png',
    'images/17-netflix.png',
    'images/18-mastercard.png',
    'images/19-chevrolet.png',
    'images/20-wendys.png',
    'images/21-redbull.png',
    'images/22-paypal.png',
    'images/23-lg.png',
    'images/24-target.png',
    'images/25-comcast.png',
    'images/26-tommy.png',
    'images/27-huawei.png',
    'images/28-wwf.png',
    'images/29-general-electric.png',
    'images/30-philadelphia-eagles.png',
    'images/31-lacoste.png',
    'images/32-john-deere.png',
    'images/33-motorola.png',
    'images/34-firefox.png',
    'images/35-nvidia.png',
    'images/36-boeing.png',
    'images/37-mistubishi.png',
    'images/38-unilever.png',
    'images/39-bentley.png',
    'images/40-dove.png',
    'images/41-cisco.png',
    'images/42-toblerone.png',
    'images/43-ubuntu.png',
    'images/44-louis-vuitton.png',
    'images/45-carrefour.png',
    'images/46-goodyear.png',
    'images/47-michelin.png',
    'images/48-american-airline.png',
    'images/49-colgate-palmolive.png',
    'images/50-credit-agricole.png',
    'images/51-scotia.png',
  ];
  void nextQuestion() {
    count++;
  }

  List<List> multiChoice = [
    ['Ebay', 'Apple', 'Alphabet', 'Duckduckgo'],
    ['Facebook', 'Snapchat', 'Instagram', 'MySpace'],
    ['Zoom', 'Yahoo!', 'Pinterest', 'Google'],
    ['Microsoft', 'Adobe', 'Intel', 'Salesforce'],
    ['Amazon', 'Alibaba', 'Best buy', 'B&H'],
    ['Walt-disney', 'DC', 'Marvel', 'Warner bros'],
    ['Honda', 'Mazda', 'Toyota', 'Lexus'],
    ['Burger King', 'KFC', 'A&W', 'McDonald'],
    ['Dominos', 'PizzaHut', 'Little Caesars', 'Papa John\'s'],
    ['Nike', 'Locker', 'Adidas', 'Reebok'],
    ['Total', 'Shell', 'Exxon', 'Chevron'],
    ['Porshe', 'BMW', 'Mercedes-Benz', 'Mayback'],
    ['Audi', 'Peugot', 'Bugatti', 'Ferrari'],
    ['Coca-cola', 'Heineken', 'Pespi', 'Sprite'],
    ['Dior', 'Balenciaga', 'Versace', 'Gucci'],
    ['McCafe', 'Starbucks', 'Dunkin', 'Tim Hortons'],
    ['HBO', 'Prime', 'Hulu', 'Netflix'],
    ['Visa', 'American express', "MasterCard", 'JCB'],
    ['Chevrolet', 'Dodge', 'Cadilac', 'GMC'],
    ['Arby\'s', 'Sonic', 'Wendy\'s', 'Popeyes'],
    ['RedBull', 'Monster', 'Burn', 'Zipfizz'],
    ['Venmo', 'Paypal', 'Capital one', 'Square'],
    ['LG', 'Samsung', 'JVC', 'SONY'],
    ['Walmart', 'Target', 'Costco', 'The Home Depot'],
    ['ComCast', 'NBC', 'Sky', 'Spectrum'],
    ['Ralp Lauren', 'Tommy', 'Levis', 'Guess'],
    ['Xiaomi', 'Realme', 'Huawei', 'Honore'],
    ['Greenpeace', 'WWF', 'Unesco', 'FSC'],
    ['General Electric', 'Siemens', 'ABB', 'Honeywell'],
    [
      'Dallas Cowboys',
      'Green Bay Packers',
      'New England',
      'Philadelphia Eagles'
    ],
    ['Lacoste', 'Hugo Boss', 'Armani Exchange', 'calvin Klein'],
    ['Kubota', 'Cat', 'john-deere', 'New Holland'],
    ['Nokia', 'Asus', 'ZTE', 'Motorola'],
    ['Chrome', 'Firefox', 'Tor', 'Safari'],
    ['AMD', 'Nvidia', 'Micron', 'Gigabyte'],
    ['AirBus', 'Boeing', 'Bombardier', 'Embraer'],
    ['Mistubishi', 'Hyundai', 'Suziki', 'Nissan'],
    ['Johnson and Johnson', 'Unilever', 'Procter and Gamble', 'Nestlé'],
    ['Bentley', 'Maserati', 'Rolls-Royce', 'Aston Martin'],
    ['Nivea', 'Pantene', 'Rexona', 'Dove'],
    ['Cisco', 'Oracle', 'IBM', 'Juniper Networks'],
    ['Mars', 'Snickers', 'Bouncy', 'Toblerone'],
    ['Ubuntu', 'Linux', 'Windows', 'Macos'],
    ['Yves-saint-laurent', 'Louis vuitton', 'Prada', 'Dior'],
    ['Carrefour', 'Auchamp', '7 eleven', 'Spar'],
    ['Yokohama', 'Goodyear', 'Dunlop', 'Bridgestone'],
    ['Michelin', 'Pirelli', 'Firestone', 'Hankook'],
    ['Delta', 'United', 'American Airline', 'Continental'],
    ['Colgate-Palmolive', 'Reliance', 'Larsen and Toubro', 'Dabur'],
    ['Société Générale', 'Crédit Mutuel', 'BNP', 'Crédit Agricole'],
    ['Scotiabank', 'RBC', 'TD', 'CIBC'],
  ];
  List<String> correctAnswer = [
    'Apple',
    'Facebook',
    'Google',
    'Microsoft',
    'Amazon',
    'Walt-disney',
    'Toyota',
    'McDonald',
    'Dominos',
    'Nike',
    'Shell',
    'Mercedes-Benz',
    'Audi',
    'Pespi',
    'Gucci',
    'Starbucks',
    'Netflix',
    'MasterCard',
    'Chevrolet',
    'Wendy\'s',
    'RedBull',
    'Paypal',
    'LG',
    'Target',
    'ComCast',
    'Tommy',
    'Huawei',
    'WWF',
    'General Electric',
    'Philadelphia Eagles',
    'Lacoste',
    'John-deere',
    'Motorola',
    'Firefox',
    'Nvidia',
    'Boeing',
    'Mistubishi',
    'Unilever',
    'Bentley',
    'Dove',
    'Cisco',
    'Toblerone',
    'Ubuntu',
    'Louis vuitton',
    'Carrefour',
    'Goodyear',
    'Michelin',
    'American Airline',
    'Colgate-Palmolive',
    'Crédit Mutuel',
    'Scotiabank',
  ];

  List randomizedBrand = [];
  randomization() {
    for (int i = 0; i < 51; i++) {
      randomizedBrand.add(multiChoice[i]..shuffle());
    }
  }

  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('You are a master'),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('submit'),
                onPressed: (){

                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    randomization();
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
                          '$correctAnswerCount',
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
//              // Logo
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  child: Image.asset(
                    logoBank[count],
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
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text(
                          randomizedBrand[count][0],
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
                            if (correctAnswer[count] ==
                                randomizedBrand[count][0]) {
                              correctAnswerCount++;
                              createAlertDialog(context);
                            }
                          });
                          if (count < 50) {
                            nextQuestion();
                            progress += 2;
                          }
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
                          randomizedBrand[count][1],
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
                            if (correctAnswer[count] ==
                                randomizedBrand[count][1]) {
                              correctAnswerCount++;
                            }
                          });
                          if (count < 50) {
                            nextQuestion();
                            progress += 2;
                          }
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
                          randomizedBrand[count][2],
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
                            if (correctAnswer[count] ==
                                randomizedBrand[count][2]) {
                              correctAnswerCount++;
                            }
                          });
                          if (count < 50) {
                            nextQuestion();
                            progress += 2;
                          }
                        },
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                      child: Text(
                        randomizedBrand[count][3],
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
                          if (correctAnswer[count] ==
                              randomizedBrand[count][3]) {
                            correctAnswerCount++;
                          }
                        });
                        if (count < 50) {
                          nextQuestion();
                          progress += 2;
                        }
                      },
                    ),
                  ),
                ],
              ),
              // progress bar
              RoundedProgressBar(
                percent: progress,
                style: RoundedProgressBarStyle(
                  borderWidth: 1,
                  widthShadow: 0,
                  colorProgress: Colors.black,
                  colorProgressDark: Colors.black,
                  backgroundProgress: Colors.grey[100],
                ),
                borderRadius: BorderRadius.circular(5),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: after all the progress, tell the user is he is a pro or not and display the score on a popup(check a package for that)
