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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var _counter = 0.0;
  var myFontSize = 30.0;
  var isChecked = false;


  void _incrementCounter() {
    setState(() {
      if(_counter < 99.0) _counter++;
        myFontSize = _counter;
    });
  }

  void setNewValue(double value)
  {
    setState(() {
      _counter = value;
      myFontSize = value;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'You have pushed the button this many times:',
                style:TextStyle( color:Colors.blue, fontSize: myFontSize),
            ),
            ElevatedButton(
                onPressed: () {  },
                child:Image.asset("images/algonquin.jpg", width: 200, height:200) ),
            Checkbox(value: isChecked, onChanged: (bool ? ch) {
              if (ch != null) {
                setState(() {
                  isChecked = ch;
                });
              }
            }),
            Switch(value:isChecked, onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void buttonClicked(){

}
