import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailFlied(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            passwordFlied(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            submitButton(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget emailFlied() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'me@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordFlied() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Login'),
    );
  }
}
