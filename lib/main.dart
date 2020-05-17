import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1; 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNum = 6;
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice1.png'),
              onPressed: (){
                print('Right button');
              },
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
  
//}
