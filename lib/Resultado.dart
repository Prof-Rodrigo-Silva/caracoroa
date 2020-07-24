import 'package:flutter/material.dart';


class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var _caminhoImagem;

    if(widget.valor == "cara"){
      _caminhoImagem = "images/moeda_cara.png";
    }else{
      _caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      //backgroundColor: Colors.green,
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);},
                child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),

      ),
    );
  }
}
