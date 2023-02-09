import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String? valor;
  Resultado({super.key, this.valor});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem = "assets/imagens/moeda_cara.png";
    if (widget.valor == "cara") {
      caminhoImagem = "assets/imagens/moeda_cara.png";
    } else {
      caminhoImagem = "assets/imagens/moeda_coroa.png";
    }
    return Scaffold(
      // 0xff é o padrão antes de colocar a cor hexadecimal
      backgroundColor: const Color(0xff61bd86),
      // backgroundColor: Color.fromRGBO(255, 204, 128, 0.8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/imagens/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
