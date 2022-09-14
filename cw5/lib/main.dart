import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
var num1 = 1;
var num2 = 1;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    setState(() {});
  }

String text(){

    if (num1 == 1 && num2 == 2){

    return "player 2 is winner";

    }else if (num1 == 1 && num2 == 3){

      return "player 1 is winner";
    }else if (num1 == 2 && num2 == 1){

      return "player 1 is winner";}else if (num1 == 2 && num2 == 3){

      return "player 2 is winner";}
      else if (num1 == 3 && num2 == 1){

      return "player 2 is winner";}
      
      else if (num1 == 3 && num2 == 2){

      return "player 1 is winner";}
      else{

       return "Draw";

      }

     

  }//text

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[900],
          title: Text('ROCK PAPER SCISSORS'),
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'assest/i_$num1.png',
                            height: 120,
                            width: 120,
                          ),
                        ),
                        Text('Player1')
                      ],
                      
                    ),


                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'assest/i_$num2.png',
                            height: 120,
                            width: 120,
                          ),
                        ),
                         Text('Player2')
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 100,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800],
                  ),
                  onPressed: () {
                    play();
                  },
                  child: Text('Play'),
                ),
              ),

               Container(

              height: 40,

              ),
              Container(

              child: Text(text(),style: TextStyle(fontSize: 30),),


              )
            ],



          ),
        ),
      ),
    );
  }
}