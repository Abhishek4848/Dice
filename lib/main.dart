import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backg.jpg"), 
            fit: BoxFit.cover
          ),
        ),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('My Dice'),
           backgroundColor: Colors.orangeAccent,
          ),
          
          body:DicePage(),
        ),
     ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdnum = 1;
  
  void dicee() {
    setState(
      () {
        leftdnum = Random().nextInt(6) + 1;
      },
    );
  }

@override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
            splashColor: Colors.cyanAccent,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              onPressed: () {
                dicee();
              },
              child: Image.asset('images/dice$leftdnum.jpeg'),
            ),
          ),
          Expanded(
            child: FlatButton(
            splashColor: Colors.redAccent,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              onPressed: () {
                dicee();
              },
              child: Image.asset('images/dice$leftdnum.jpeg'),
            ),
          ),
          Expanded(
            child: FlatButton(
            splashColor: Colors.greenAccent,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              onPressed: () {
                dicee();
              },
              child: Image.asset('images/dice$leftdnum.jpeg'),
            ),
          ),
        ],
      ),
    );
  }
}
  


