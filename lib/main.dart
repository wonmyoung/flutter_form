// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                Text(
                  "Here to Get",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                Text(
                  "Welcomed !",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter Your Name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "이름을 다시 입력해 주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter Your Name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "이름을 다시 입력해 주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return "이메일을 다시 입력해 주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return "이메일을 다시 입력해 주세요.";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: height * 0.04),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final snackbar =
                          SnackBar(content: Text('submiting form'));
                      _scaffoldKey.currentState!.showSnackBar(snackbar);
                    }
                  },
                  child: const Text('Enabled Button'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ));
  }
}
