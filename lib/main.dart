import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Práctica Intermedia TI',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        brightness: Brightness.dark,
      ),
      //home: const MyHomePage(title: 'Mi primer app'),
      home: const LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter>0) _counter--;
    });
  }

  void _cambiar(bool subir)
  {
    setState(() {
      if(subir){
        _counter++;
      }else{
        if(_counter>0) _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Has presionado el botón con signo mas (+):'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () => _cambiar(false),
                    icon: const Icon(Icons.remove_circle),
                    label: const Text('Bajar')),
                ElevatedButton.icon(
                    onPressed: () => _cambiar(true),
                    icon: const Icon(Icons.add_circle),
                    label: const Text('Subir')),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
