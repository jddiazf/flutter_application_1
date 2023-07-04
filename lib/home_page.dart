import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _suma() {
    setState(() {
      _counter += 2;
    });
  }

  void _resta() {
    setState(() {
      _counter -= 2;
    });
  }

  void _multiplicacion() {
    setState(() {
      _counter *= 2;
    });
  }

  void _division() {
    setState(() {
      _counter ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text("Tarea 1.2"),
      ),
      body: Stack(
        children: [
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'You have pushed the button this many times: $_counter',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ]),
          ),

          //
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _suma, child: const Text("+"))),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _resta, child: const Text("-"))),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _multiplicacion, child: const Text("*"))),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: _division, child: const Text("/"))),
                ],
              )),
        ],
      ),
    );
  }
}
