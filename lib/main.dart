import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: AtmHome()));

class AtmHome extends StatefulWidget {
  @override
  _AtmHomeState createState() => _AtmHomeState();
}

class _AtmHomeState extends State<AtmHome> {
  var _imageLogo = AssetImage("images/logo.png");
  var _imageEmpresa = AssetImage("images/menu_empresa.png");
  var _imageServico = AssetImage("images/menu_servico.png");
  var _imageCliente = AssetImage("images/menu_cliente.png");
  var _imageContato = AssetImage("images/menu_contato.png");

  void _abrirTela(String tela) {
    switch (tela) {
      case "contato":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TelaContato()));
        }
        break;
      case "servico":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TelaServico()));
        }
        break;
      case "cliente":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TelaCliente()));
        }
        break;
      case "empresa":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Image(
              image: this._imageLogo,
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 5, 5),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => _abrirTela("empresa"),
                        child: Image(
                          image: this._imageEmpresa,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => _abrirTela("servico"),
                        child: Image(
                          image: this._imageServico,
                        ),
                      )),
                ],
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 5, 5),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => _abrirTela("cliente"),
                        child: Image(
                          image: this._imageCliente,
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => _abrirTela("contato"),
                        child: Image(
                          image: this._imageContato,
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
