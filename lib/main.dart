import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BROWSE CATEGORIES',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'BROWSE CATEGORIES'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'BROWSE CATEGORIES',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Not sure about exactly which recipe you are looking for? Do a search, or dive into our most popular categories.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.left,
              ),
            ),

            const Text(
              'BY MEAT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Beef.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const Text("Beef", style: TextStyle( color: Colors.white, fontSize: 30)),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Chicken.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const Text("Chicken", style: TextStyle( color: Colors.white, fontSize: 30)),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Pork.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const Text("Pork", style: TextStyle( color: Colors.white, fontSize: 30)),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Seafood.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const Text("Seafood", style: TextStyle( color: Colors.white, fontSize: 30)),
                  ],
                ),
              ],
            ),

            const Text(
              'BY COURSE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/MainDishes.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("MainDishes", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Salad.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Salad Recipes", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/SideDishes.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Side Dishes", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Crockpot.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Crock Pot", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
              ],
            ),


            const Text(
              'BY DESSERT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget> [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/IceCream.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Ice Cream", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Brownie.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Brownies", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Pie.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Pies", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset('images/Cookie.jpg', width: 150, height: 150, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 10),
                    const Text("Cookies", style: TextStyle( color: Colors.black, fontSize: 15)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
