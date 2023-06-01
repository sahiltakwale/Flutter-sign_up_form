import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container
    (
      decoration:const BoxDecoration
      (
        image: DecorationImage
        (
          image: AssetImage('assets/signupbg.jpg')
        )
      ),
    
      child: Scaffold
      (
        backgroundColor: Colors.transparent,

        body: Stack
        (
          children: 
          [
            Container       //container 1 for welcome
            (
              padding:const EdgeInsets.only(left: 35, top:110),
              child: const Text
              (
                "Welcome", 
                style: TextStyle
                (
                  color: Color.fromARGB(255, 74, 74, 74),
                  fontSize: 45,

                )
              ),
            ),

            // ignore: avoid_unnecessary_containers
            SingleChildScrollView   //scrollable widget
            (
              child: Container      //container 2 for column's children array
              ( 
                padding: const EdgeInsets.only(top: 350, right: 40, left: 40),
                child: Column
                (
                  children: 
                   [
                      TextField    //1st child of column
                      (
                        decoration: InputDecoration
                        (
                          hintText: "Email",
                          border: OutlineInputBorder
                          (
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
            
                      SizedBox(height: 20), //2nd child of column
            
                      TextField   //3rd child of column
                      (
                        obscureText: true,
                        decoration: InputDecoration
                        (
                          hintText: "Password",
                          border: OutlineInputBorder
                          (
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),

                      SizedBox(height: 20),  //4th child of column

                      const Text  //5th child of column
                      (
                        'Sign up',
                        style: TextStyle
                        (
                          fontSize: 27, fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 208, 208, 208),
                          backgroundColor: Colors.black                      
                        ),
                      )
                   ],
                )
              ),
            )
          ]
        )
      )
    );
  }
}