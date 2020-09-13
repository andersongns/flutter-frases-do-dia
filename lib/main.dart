import 'dart:math';

import 'package:flutter/material.dart';

class MainStateful extends StatefulWidget {
  @override
  _MainStatefulState createState() => _MainStatefulState();
}

class _MainStatefulState extends State<MainStateful> {
  var _frase = <String>[
    'Clique abaixo para gerar uma frase!',
    'Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.',
    'A persistência é o caminho do êxito.',
    'Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.',
    'As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.',
    'Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.',
    'No meio da dificuldade encontra-se a oportunidade.',
    'Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.',
    'Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.',
    'A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.',
    'No meio da dificuldade encontra-se a oportunidade.'
  ];

  var _randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('images/logo.png'),
              ),
              Text(
                _frase[_randomNumber],
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 25),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () => {
                  setState(() => {_randomNumber = Random().nextInt(9) + 1})
                },
                child: Text(
                  'Nova frase',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MainStateful()));
}
