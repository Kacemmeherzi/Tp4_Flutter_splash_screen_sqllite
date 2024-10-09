import 'package:flutter/material.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title: const  Text("Log in"),backgroundColor:Colors.green,),
    );

  }
}