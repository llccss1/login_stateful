import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  var email = '';
  var password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(children: [
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 25.0)),
          summitButton(),
        ]),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      
      validator: validateEmail,

      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      
      validator: validatePassword,

      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget summitButton() {
    return RaisedButton(
      color: Colors.red,
      child: Text('Summit!'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('email: $email, pass: $password');
        }
      },
    );
  }
}
