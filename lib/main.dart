import 'package:flutter/material.dart';
import 'dart:math';

// Stateless são widgets que nao podem ser alterados (constantes)
// Stateful são widgets que podem ser alterados (variáveis)


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  var _frases = [
    "“Até a jornada de mil milhas começa com um pequeno passo.” – Provérbio Japonês",
    "“Só há um tempo em que é fundamental despertar. Esse tempo é agora.” – Buda",
    "“A diferença entre ganhar e perder geralmente é não desistir.” – Walt Disney",
    "O homem começa a morrer na idade em que perde o entusiasmo.” – Honoré de Balzac",
    "“A vida verdadeira é vivida quando pequenas mudanças acontecem.” – Leo Tolstoy",
    "“A sabedoria é basicamente honestidade de pensamento.” – Pam Brown",
    "“Mude a maneira como você vê as coisas e as coisas que você vê mudam.” – Wayne W. Dyer",
    "“Mude seus pensamentos e mude seu mundo.” – Norman Vincent Peale",
    "“Se você quiser mudar o mundo, pegue sua caneta e escreva.” – Martinho Lutero",
    "“Quem olha para fora, sonha; quem olha para dentro, acorda.” – Carl Jung",
    "“Se você pode sonhar, você pode fazer.” – Walt Disney",
    "“Faça o que puder, com o que tiver, onde estiver.” – Theodore Roosevelt",
    "“Você é muito poderoso, desde que saiba como você é poderoso.” – Yogi Bhajan",
    "“Aja como se o que você faz, faz a diferença. Porque faz.” – William James",
    "“Não sei aonde vou, mas já estou no caminho.” – Carl Sandburg",
    "“Feliz aquele que transfere o que sabe e aprende o que ensina.” – Cora Coralina",
    "“Você pode tudo se tiver entusiasmo.” – Henry Ford",
    "“Cada sonho que você deixa para trás é um pedaço do seu futuro que deixa de existir.” – Steve Jobs",
    "“A maior aventura que você pode viver é viver a vida dos seus sonhos.” – Oprah Winfrey",
    "“Vença a si mesmo e terá vencido o seu próprio adversário.” – Provérbio Japonês",
    "“Se você realmente quer que aconteça, vá atrás e não desista.” – Carlos Adriano",
    "“Você não pode mudar o ontem, mas pode fazer o amanhã melhor.” – Chico Xavier",
    "“Por mais longa que seja a caminhada, o mais importante é dar o primeiro passo.” – Vinícius de Moraes",
    "“Acredite, você tem forças para chegar onde quiser. Basta querer.” –  Valmir P. Pires",
    "“Aprenda a amar, sem esperar muito dos outros.” – Augusto Cury",
    "“Seja conhecido pelo seu jeito bonito de ver a vida.” – Um cartão",
    "“Imagine uma nova história para a sua vida e acredite nela.” – Paulo Coelho",
    "“Tudo o que é seu encontrará uma maneira de chegar até você.” – Chico Xavier",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

  }
  @override
  Widget build(BuildContext context) {

    var _titulo = "Frases do Dia";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.greenAccent)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green
                ),
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
