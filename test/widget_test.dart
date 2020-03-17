import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/saitama.png"), 
            fit: BoxFit.cover
          ),
        ),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Dice'),
           backgroundColor: Colors.black54,
          ),
          
          body: DicePage(),
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
  var rightdnum = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: 20.0,
        ),

        Expanded(
          child:
          FlatButton(
            splashColor: Colors.black38,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            onPressed: (){
              setState((){
                leftdnum = Random().nextInt(6)+1;
                rightdnum = Random().nextInt(6)+1;
              });
            },           

            child: Image(
              image: AssetImage('images/dice$leftdnum.png'),
            ), 
          )
        ),
      ],
    );
  }
}

