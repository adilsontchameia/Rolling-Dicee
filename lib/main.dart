import 'dart:math';

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
  //variaveis
  int leftDice = 1;
  int rightDice = 2;
  //Metodos para gerar imagens
  _gerarImagens() {
    setState(
      () {
        //Rondomizar os numeros de 1 - 6
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
      },
    );
  }

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
                onPressed: () {
                  //Mudando estado(imagem), ao clicar
                  _gerarImagens();
                },
                child: Image.asset("dice$leftDice.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  //Mudando estado(imagem), ao clicar
                  _gerarImagens();
                },
                child: Image.asset("dice$rightDice.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
