import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "请输入邮箱",
                  labelText: "邮箱",
                  errorText: ""
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "请输入密码",
                  labelText: "密码",
                  errorText: ""
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.tealAccent,
                onPressed: null,
                child: Text("登录"),
              ),
            ],
          ),
        ),
      )
    );
  }
}

void main() => runApp(MyApp());