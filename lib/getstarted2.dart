import 'package:flutter/material.dart';
import 'dart:ui';
import 'Regester.dart';
import 'loginpage.dart';
class two extends StatefulWidget {
  const two({super.key});
  @override
  State<two> createState() => _LogInState();
}
class _LogInState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://i.pinimg.com/474x/10/ec/8a/10ec8ae94775a36222ba63cfab07df45.jpg'
              ,fit: BoxFit.cover,),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          Column(

            children: [
              SizedBox(height: 300,),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10),
              //   child: Text('Coffee',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
              // ),
              SizedBox(height: 450,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 150,
                      height: 70,

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12,border: Border.all(color: Colors.white)),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 30),
                          child: Text('Sign up',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30)),

                      child: GestureDetector(onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 30),
                          child: Text(' Sign in',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
//               Padding(
//                 padding: const EdgeInsets.only(left: 80),
//                 child: Container(
//                   width: 200,
//                   height: 70,
// decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30)),
//
//                   child: GestureDetector(onTap:(){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign()));
//                   },
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 15,left: 50),
//                       child: Text(' Sign in',style: TextStyle(fontSize: 25,color: Colors.orange,fontWeight: FontWeight.bold),),
//                     ),
//                   ),
//                 ),
//               ),
            ],
          )
        ],
      ),
    );
  }
}