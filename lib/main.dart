import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // O concento de Stateless é não ter estado.
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  //Componente flutter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu primeiro app em Flutter"),
      ),
      body: Center(
        child: Text("CONTADOR\n$count",
          textAlign: TextAlign.center,
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        increment();
      },),
    );
  }
}