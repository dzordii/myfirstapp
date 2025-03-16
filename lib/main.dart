import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Comentários em linha são feitos com duas barras
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const MyHomePage(title: 'Teste'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _numeroAleatorio = 0;
  List frases = [
    'O mundo está nas mãos daqueles que têm a coragem de sonhar e correr o risco de viver seus sonhos.',
    'A vida é um eco. Se você não está gostando do que está recebendo, observe o que está emitindo.',
    'A vida é um eco. Se você não está gostando do que está recebendo, observe o que está emitindo.',
    'A vida é um eco. Se você não está gostando do que está recebendo, observe o que está emitindo.',
  ];

  void _incrementCounter() {
    setState(() {

    _numeroAleatorio = Random().nextInt(4); // Gera um número aleatório entre 0 e 3

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Pressione o botão para gerar uma frase:'),
            Text(
              '$_numeroAleatorio',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
