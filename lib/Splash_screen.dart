import 'dart:async';

import 'package:bmi_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget{
  @override
  State<Splash_screen> createState() => _Splash_screenState();

}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splashbmi.jpg"),fit:BoxFit.cover
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI",style: (TextStyle(fontSize:46,fontWeight: FontWeight.w400,color: Colors.white,fontFamily: "Cursive")),),
            Center(child:Icon(Icons.double_arrow,color: Colors.white,))
          ],
        ),
      ),


    );
  }
}