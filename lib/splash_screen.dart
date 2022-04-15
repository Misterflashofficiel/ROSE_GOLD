import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel33/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 10), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())),
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9677fc),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Row(
            children: [
              SizedBox(width: 120,),
              Text("Hey Travellers !!!", style: TextStyle(color: Colors.white, fontSize: 25),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 130,),
              Text("  Welcome in Abidjan ", style: GoogleFonts.brawler(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),),
            ],
          ),
          Row(
            children: [
              // SizedBox(width: 120,),
              // Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 40),),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Image.asset("assets/image0.gif", height: 650.0,
                  width: 400.0,),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 110,),
              Text("Recommandation Tourism Abidjan App ", style: TextStyle(color: Colors.white, fontSize: 18),),
            ],
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 160,),
            Text("", style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline),)
          ],)
          // SizedBox(height: 40,),
          // Row(
          //   children: [
          //     SizedBox(width: 40,),
          //     Text("Hay Travellers !!!", style: TextStyle(color: Colors.white, fontSize: 25),),
          //   ],
          // ),

        ],
      ),
    );
  }
}
