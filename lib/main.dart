import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _diceappState createState() => _diceappState();
}

class _diceappState extends State<DicePage> {
  void num (){
    nuumber=rng.nextInt(5)+1;
    lnumber=rng.nextInt(5)+1;
  }

  int nuumber  = 1;
  int lnumber = 6;
  var rng = new Random();
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: FlatButton(
                  onPressed: (){

                    setState(() {
                     num();
                    });


                  },
                  child: Image.asset('images/dice$nuumber.png')),

            ),
            Expanded(
              flex: 5,
              child: FlatButton(
                  onPressed: (){

                    setState(() {
                      num();
                    });


                  },
                  child: Image.asset('images/dice$lnumber.png')),

            ),
          ],
        ),
      ),

    );
  }
}

