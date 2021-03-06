import 'dart:async';
import 'dart:math';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//random số hộp thư của mail
Random gmail = new Random();
int gmailNumber = gmail.nextInt(100);

Random icloud = new Random();
int icloudNumber = icloud.nextInt(100);

Random hotmail = new Random();
int hotmailNumber = hotmail.nextInt(100);

Random vip = new Random();
int vipNumber = vip.nextInt(100);

Random secure = new Random();
int secureNumber = secure.nextInt(100);

Random notifi = new Random();
int notifiNumber = notifi.nextInt(100);

int total = gmailNumber + icloudNumber + hotmailNumber + vipNumber;

//Page 1 login email
class _MyHomePageState extends State<MyHomePage> {
  String _username = " ";
  String _password = " ";
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
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
              padding: EdgeInsets.fromLTRB(50, 80, 50, 0),
              child: Container(
                height: 60,
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
                height: 60,
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
                  } else if (_username == _password) {
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
      backgroundColor: Colors.blue.shade100,
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
          .pushReplacement(MaterialPageRoute(builder: (_) => MailboxPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
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

class MailboxPage extends StatefulWidget {
  const MailboxPage({Key? key}) : super(key: key);

  @override
  _MailboxPageState createState() => _MailboxPageState();
}

bool _isChecked0 = false;
bool _isChecked1 = false;
bool _isChecked2 = false;
bool _isChecked3 = false;
bool _isChecked4 = false;
bool _isChecked5 = false;
bool _isChecked6 = false;

int _all = 0;

class _MailboxPageState extends State<MailboxPage> {
  Map<String, bool> List = {
    "All inboxes": false,
    "ICloud": false,
    "Gmail": false,
    "Hotmail": false,
    "VIP": false,
  };
  Map<String, bool> List2 = {
    "Secure": false,
    "Notifications ": false,
  };

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    const title = 'Mailboxes';
    const tt = 'Mailboxes';

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.grey[300],
              title: const Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Done ',
                  ),
                ),
              ],
            ),
            body: ListView(children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                color: Colors.grey[300],
                child: Text(
                  "Mailboxes",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Column(children: [
                Row(children: [
                  Checkbox(
                    value: _isChecked0,
                    onChanged: (val) {
                      if (_isChecked0 == false)
                        _isChecked0 = true;
                      else
                        _isChecked0 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.all_inbox),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'All inboxes',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        total.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
                Row(children: [
                  Checkbox(
                    value: _isChecked1,
                    onChanged: (val) {
                      if (_isChecked1 == false)
                        _isChecked1 = true;
                      else
                        _isChecked1 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.cloud_circle_sharp),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'ICloud',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        icloudNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
                Row(children: [
                  Checkbox(
                    value: _isChecked2,
                    onChanged: (val) {
                      if (_isChecked2 == false)
                        _isChecked2 = true;
                      else
                        _isChecked2 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.star_border),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'Gmail',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        gmailNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
                Row(children: [
                  Checkbox(
                    value: _isChecked3,
                    onChanged: (val) {
                      if (_isChecked3 == false)
                        _isChecked3 = true;
                      else
                        _isChecked3 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.star),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'Hotmail',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        hotmailNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
                Row(children: [
                  Checkbox(
                    value: _isChecked4,
                    onChanged: (val) {
                      if (_isChecked4 == false)
                        _isChecked4 = true;
                      else
                        _isChecked4 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.star),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'VIP',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        vipNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
              ]),
              Container(
                padding: EdgeInsets.all(7),
                color: Colors.grey[300],
                child: Text(
                  "Special folders",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Column(children: [
                Row(children: [
                  Checkbox(
                    value: _isChecked5,
                    onChanged: (val) {
                      if (_isChecked5 == false)
                        _isChecked5 = true;
                      else
                        _isChecked5 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.star),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'Secure',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        secureNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
                Row(children: [
                  Checkbox(
                    value: _isChecked6,
                    onChanged: (val) {
                      if (_isChecked6 == false)
                        _isChecked6 = true;
                      else
                        _isChecked6 = false;
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    child: Icon(Icons.star),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(40, 1, 1, 1),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        notifiNumber.toString(),
                        style: TextStyle(fontSize: 18),
                      ))
                ]),
              ]),
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('Delete'),
                  ),
                ])
              ])
            ])));
  }
}
