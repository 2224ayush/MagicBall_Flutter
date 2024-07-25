import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Magic Ball (Ask Anything)",
            style: TextStyle(
            color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: MagicBall(),
    ),
  ));
}
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnum=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget>[Expanded(
          child:TextButton(
            onPressed: (){
              setState(() {
                ballnum=Random().nextInt(5  )+1;
                print("Magic Ball clicked=$ballnum");
              });
            },
            child: Image.asset("images/ball$ballnum.png"),
          ),
        ),]
      ),
    );
  }
}

