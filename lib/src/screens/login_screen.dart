import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin:EdgeInsets.all(20.0),
      child: Form(
        child:Column(
          children: [
            emailField(),
            //passwordField(),
            //summitButton(),
          ]
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }
/*
  Widget passwordField() {
    return
  }

  Widget summitButton() {
    return
  }
  */
}