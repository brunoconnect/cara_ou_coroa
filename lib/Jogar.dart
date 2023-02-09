import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(
                  valor: resultado,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 0xff é o padrão antes de colocar a cor hexadecimal
      backgroundColor: const Color(0xff61bd86),
      // backgroundColor: Color.fromRGBO(255, 204, 128, 0.8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/imagens/logo.png"),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset("assets/imagens/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
