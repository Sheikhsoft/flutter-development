// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: LoginPage()));

class LoginPage extends StatefulWidget {

  @override

  _LoginPageState createState() => _LoginPageState();



}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: ListView(

          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[

                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,

              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',

              ),
            ),
// spacer
            SizedBox(height: 12.0),
// [Password]
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            // TODO: Add button bar (101)
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[

                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    // TODO: Clear the text fields (101)
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    Navigator.pop(context);
                    // TODO: Show the next page (101)
                  },
                ),

                // TODO: Add buttons (101)
              ],
            ),


            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }



}



// TODO: Add AccentColorOverride (103)