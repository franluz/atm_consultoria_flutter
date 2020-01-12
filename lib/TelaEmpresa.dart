import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  var _imageDetalheEmpresa = AssetImage("images/detalhe_empresa.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Empresa"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image(
                    image: this._imageDetalheEmpresa,
                  ),
                  Text(
                    "Detalhes empresa",
                    style: TextStyle(color: Colors.red, fontSize: 22),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry." +
                        " Lorem Ipsum has been the industry's standard dummy text ever since the " +
                        "1500s, when an unknown printer took a galley of type and scrambled it to "
                            "make a type specimen book. It has survived not only five centuries, "
                            "but also the leap into electronic typesetting, remaining essentially unchanged. "
                            "It was popularised in the 1960s with the release of Letraset sheets containing "
                            "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus"
                            " PageMaker including versions of Lorem Ipsum."
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry." +
                        " Lorem Ipsum has been the industry's standard dummy text ever since the " +
                        "1500s, when an unknown printer took a galley of type and scrambled it to "
                            "make a type specimen book. It has survived not only five centuries, "
                            "but also the leap into electronic typesetting, remaining essentially unchanged. "
                            "It was popularised in the 1960s with the release of Letraset sheets containing "
                            "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus"
                            " PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
