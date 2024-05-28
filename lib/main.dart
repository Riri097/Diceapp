import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Apps(),
    );
  }
}

class Apps extends StatefulWidget {
  const Apps ({super.key});

  @override
  State<Apps> createState() => _AppsState();

}

class _AppsState extends State<Apps> {
  var changeImage1 = 'assets/6.png';
  var changeImage2 = 'assets/5.png';
  int LeftDice = 1;
  int RightDice = 2;

//
  void roll() {
    int LeftDice = Random().nextInt(6)+1;
    int RightDice = Random().nextInt(6)+1;
    setState(() {
      changeImage1= 'assets/$LeftDice.png';
      changeImage2 = 'assets/$RightDice.png';

    });
  }
    // void doubleroll() {
    //   setState(() {
    //     changeImage = 'assets/2.png';
    //     changeImage2 = 'assets/3.png';
    //   });
    // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yoyo"),
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child:
              GestureDetector(
              onTap: roll,
                  onDoubleTap: null,
                  child:
                  Image.asset(changeImage1),
              )),
              SizedBox(
                width: 25,
              ),
              Expanded(
                  child:
              GestureDetector(
                onTap: roll,
                  onDoubleTap: null,
                  child: Image.asset(changeImage2))),
            ],
          )
        ],
      ) ,
      backgroundColor: Colors.black,


    );
}
}

//bujye