import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                      radius: 300.0,
                    ),
                    // child: Image(
                    //   image: AssetImage('assets/images/avatar.png'),
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.white70),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                    border: OutlineInputBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(3)),

                      borderSide: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com',
                    //hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.white70),
                  cursorColor: Colors.white,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFF4949FF),
                    borderRadius: BorderRadius.circular(5)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Text('New User? Create Account')
            ],
          ),
        ),
      ),
    );
  }
}
