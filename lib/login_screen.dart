import 'package:flutter/material.dart';
import 'home_screen.dart';
//Recuerden que deben agregar en el pubspec.yaml la llamada al fluttertoast
//En éste caso abajo de "dependencies" agregan fluttertoast: ^8.0.9
//en Yaml la estructura se basa en separación por espacios
//como funciona en python por ejemplo (2 espacios es la base de yaml)
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState(); 
}

class _LoginScreenState extends State<LoginScreen>{
  final _usuario = TextEditingController();
  final _clave = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Bienvenidos a APP 2.0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            _usuarioText(),
            _claveText(),
            _botonLogin(),
            
          ],
        ),
      ),
    );

  }

  Widget _usuarioText() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: _usuario,
            decoration: const InputDecoration(
              labelText: 'Usuario',
              hintText: 'Escriba su carnet ej. 201930122',
              icon: Icon(Icons.person)
            ),
          ) 
        );
      }
    );
  } 

  Widget _claveText() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: _clave,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Clave',
              hintText: 'Escriba su PIN Ej. UA1200122',
              icon: Icon(Icons.vpn_key)
            ),
          ) 
        );
      }
    );
  }

  Widget _botonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton.icon(
          onPressed: ()=> login() , 
          icon: const Icon(Icons.login),  
          label: const Text('Iniciar sesión'),
          );
      }
    );
  }

  void login()
  {
    if(_usuario.text == "admin" && _clave.text=="0000" )
    {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen() ) 
        );
    }else{
      Fluttertoast.showToast(
        msg: "Error datos incorrectos",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
      );
    }
  }

}