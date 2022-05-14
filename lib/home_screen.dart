import 'dart:html';

import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'config_screen.dart';
import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenidos")),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("Información"),
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoScreen()));
            },
          ),
          ListTile(
            title: const Text("Ajustes"),
            leading: const Icon(Icons.engineering),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfigScreen()));
            },
          ),
          ListTile(
            title: const Text("Salir"),
            leading: const Icon(Icons.logout),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          )
        ],
      )),
      body: Center(
          child: ListView(children: <Widget>[
            Wrap(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const InfoScreen())),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 25),
                    fixedSize: Size.fromHeight(75)
                  ),
                  label: const Text('Redes'),
                  icon: const Icon(Icons.network_wifi),
                ),
                TextButton.icon(
                  onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const InfoScreen())),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 25),
                    fixedSize: Size.fromHeight(75)
                  ),
                  label: const Text('Bases de datos'),
                  icon: const Icon(Icons.data_array),
                )
              ]
            ),Wrap(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const InfoScreen())),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 25),
                    fixedSize: Size.fromHeight(75)
                  ),
                  label: const Text('Archivos'),
                  icon: const Icon(Icons.file_copy),
                ),
                TextButton.icon(
                  onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const InfoScreen())),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(fontSize: 25),
                    fixedSize: Size.fromHeight(75)
                  ),
                  label: const Text('Sistemas operativos'),
                  icon: const Icon(Icons.system_security_update),
                )
              ]
            ),
            
            ElevatedButton.icon(
                onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginScreen())),
              label: const Text('Salir'),
              icon: const Icon(Icons.logout),
            )
          ])
          
      ),
    );
  }
}
