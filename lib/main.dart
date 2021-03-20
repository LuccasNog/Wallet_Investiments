import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles/my_icons.dart';

void main() {
  runApp(MaterialApp(
    home: HomePag(),
  ));
}

class HomePag extends StatefulWidget {
  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple.shade900,
      body: myLayoult(),
    );
  }
}

// Função para criar o widget

Widget myLayoult() {
  return Scaffold(
    //backgroundColor: Colors.black,
    body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        // centralizando os campos
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // Aqui vamos adicionar o caminho da imagem
                  child: SvgPicture.asset(
                    iconeHome,
                    height: 160,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              //icon: Icon(Icons.email_rounded),
              hintText: "Informe seu e-mail",
              labelStyle: TextStyle(color: Colors.black),
              fillColor: Colors.white,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Senha do usuário",
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ButtonTheme(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {},
              child: Text('Logar'),
            ),
          ),
          Divider(),
          ButtonTheme(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {},
              child: Text('Registrar'),
            ),
          ),
        ],
      ),
    ),
  );
}

// função para criar um widget textField
Widget textField(String label, TextEditingController control, Function funcao) {
  return TextField(
    controller: control,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.lightGreen.shade50),
    ),
    style: TextStyle(color: Colors.amber, fontSize: 30),
    onChanged: funcao,
  );
}

void validarSenha(String senha, bool ativo, String retorna) {
  if (senha.length < 4) {
    ativo = false;
    retorna = "Por gentileza, digite uma senha forte";
    print(retorna);
  } else {
    ativo = true;
  }
}

void validarEmail(String email, bool ativo, String retorna) {}
