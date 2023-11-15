import 'dart:async';

import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Calculator()));
    });
    print('ok');
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Image(
            image: AssetImage(
              'images/logo.png',
            ),
            height: 200,
            width: 200,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            'CALCULATOR',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 100,
          ),
        ]),
      ),
    );
  }
}
