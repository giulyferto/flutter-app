import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello Code Palace",
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: MyHomePage(title: "Hello app!"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      ++_counter;
    });
  }

  void _decreaseCounter() {
    setState(() {
      --_counter;
    });
  }

  int _clear(){
    setState(() => _counter = 0);
    return _counter;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("The button has been pressed"),
            Text(
              " $_counter times",
              style: new TextStyle(fontSize: 30.0),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 30.0, bottom: 24.0),
          child: FloatingActionButton(
            onPressed: _decreaseCounter,
            tooltip: "Decrease",
            child: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 265.0, bottom: 24.0),
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: "Increase",
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 130.0, bottom: 24.0),
          child: FloatingActionButton(
            onPressed: _clear,
            tooltip: "Increase",
            child: Icon(Icons.clear_all),
          ),
        ),
      ]),
    );
  }
}
