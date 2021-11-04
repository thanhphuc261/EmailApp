import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Page 1 login email
class _MyHomePageState extends State<MyHomePage> {
  String _username = " ";
  String _password = " ";
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo email
            Image.asset(
              'images/email2.png',
              width: 100,
              height: 200,
            ),

            //Title email
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                'Welcome to Email App',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),

            //Slogan email
            Text(
              'Email helps you connect and share with the people in your life',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.purple,
                  fontStyle: FontStyle.italic),
            ),

            //TextField Login Email
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: _controller1,
                    style: TextStyle(fontSize: 17, color: Colors.purple),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'My Email Or Number',
                      labelStyle: TextStyle(color: Colors.purple),
                      prefixIcon: Icon(
                        Icons.account_box_outlined,
                        size: 28,
                        color: Colors.indigoAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //TextField Password
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 100),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: _controller2,
                    style: TextStyle(fontSize: 17, color: Colors.purple),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(color: Colors.purple),
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                        size: 28,
                        color: Colors.indigoAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Submit Button Login
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _username = _controller1.text;
                  _password = _controller2.text;
                  if (_username != _password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ErorPage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompletePage(),
                      ),
                    );
                  }
                },
                child: Text(
                  'Sign in',
                ),
                style: ElevatedButton.styleFrom(primary: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Page 2 notify show eror
class ErorPage extends StatefulWidget {
  const ErorPage({Key? key}) : super(key: key);

  @override
  _ErorPageState createState() => _ErorPageState();
}

class _ErorPageState extends State<ErorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo Eror
            Image.asset(
              'images/eror.png',
              width: 350,
              height: 300,
            ),

            //Notify Eror
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Welcome to Email App',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 250),
              child: Text(
                "Your username and password don't match."
                "Please,try again.",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.purple,
                    fontStyle: FontStyle.italic),
              ),
            ),

            //Button back page login
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sign in',
                ),
                style: ElevatedButton.styleFrom(primary: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletePage extends StatefulWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  _CompletePageState createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo Wait
            Image.asset(
              'images/email2.png',
              width: 100,
              height: 200,
            ),

            //Notify Eror
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Welcome to Email App',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "Please wait 3 second !!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.purple,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 250),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
