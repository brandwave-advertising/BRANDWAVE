import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterwave/flutterwave.dart';
import 'package:flutterwave/models/responses/charge_response.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _amount = TextEditingController();

  String? _ref;

  void setRef() {
    Random rand = Random();
    int number = rand.nextInt(2000);

    if (Platform.isAndroid) {
      setState(() {
        _ref = "AndroidRef1789$number";
      });
    } else {
      setState(() {
        _ref = "IOSRef1789$number";
      });
    }
  }

  @override
  void initState() {
    setRef();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Wave Application")),
    body: Stack(
    children: [
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
    children: [
    Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
    controller: _e
}