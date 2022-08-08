import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:samplecalculator/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp( MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Splash_Screen()),);
}

class Splash_Screen extends StatefulWidget{
  @override
  @override
  State<StatefulWidget> createState() =>
      Splashscreenstate ();

  }

class Splashscreenstate extends State {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
             () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login_Page())));

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.deepPurple[600],
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 200),
           child: Center(
             child: Container(
               width: 150, height: 200,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: AssetImage("assets/logo_black.png"),
               ),
             ),
             ),
           ),
         ),
         Padding(padding: EdgeInsets.only(top: 10),
         child: Text("WELCOME TO", style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 4),),
         ),
         Padding(padding: EdgeInsets.only(top:8),
         child: Text("ZAD",style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold) ),
         ),
        Spacer(),
         LinearProgressIndicator(
           backgroundColor: Colors.deepPurple[100],
           color: Colors.green,

         ),
       ],
     ),
   );
  }
}







