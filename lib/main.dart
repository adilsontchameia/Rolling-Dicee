import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //
  var leftDice = 1;
  var rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            //TextButtons e FlatButton, tem como padrao padding 16
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset("dice1.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset("dice1.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
