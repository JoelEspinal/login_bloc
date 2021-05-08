import 'package:flutter/material.dart';

import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailFlied(bloc),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            passwordFlied(bloc),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
            submitButton(bloc),
            Container(
              margin: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget emailFlied(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'me@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget passwordFlied(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          obscureText: true,
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: snapshot.hasData ? bloc.submit : null,
          child: Text('Login'),
        );
      },
    );
  }
}
