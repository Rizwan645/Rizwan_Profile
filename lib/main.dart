import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                maxRadius: 70,
                minRadius: 50,
                backgroundImage: AssetImage('image/abc.jpg')),
              SizedBox(
                height: 0,
                width: double.infinity,
                child: Container(),
              ),
              const Text(
                'SK MD RIZWAN',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Square Peg',
                ),

              ),
              const Text(
                 'FLUTTER   DEVELOPER',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Staatliches',
                ),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: const SizedBox(
                    height: 1,
                    width: 300,
                  ),
                  color: Colors.white,
                ),
              ),
               Card(
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone,
                      color: Colors.blue,
                      size: 30,
                    ),
                    title: Text(
                        '+91  8513901649',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      FlutterPhoneDirectCaller.callNumber("8513901649");
                    },
                  ),
                ),
              ),
               Card(
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){
                      launch('mailto:mdrizwan0645@gmail.com');
                    },
                    leading: Icon(
                        Icons.alternate_email,
                      color: Colors.blue,
                      size: 30,
                    ),
                    title: Text(
                        'mdrizwan0645@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
