import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Calci App",
      color: Colors.teal,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.teal),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Calculator",
              textDirection: TextDirection.ltr,
            ),
            leading: Icon(Icons.calculate),
          ),
          body: MyApp())));
}

TextEditingController no1 = TextEditingController();
TextEditingController no2 = TextEditingController();
int result = 0, num1 = 0, num2 = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void Add() {
    setState(() {
      num1 = int.parse(no1.text);
      num2 = int.parse(no2.text);
      result = num1 + num2;
    });
  }
  void Sub() {
    setState(() {
      num1 = int.parse(no1.text);
      num2 = int.parse(no2.text);
      result = num1 - num2;
    });
  }
    void Mul() {
      setState(() {
        num1 = int.parse(no1.text);
        num2 = int.parse(no2.text);
        result = num1 * num2;
      });
    }

    void Div() {
      setState(() {
        num1 = int.parse(no1.text);
        num2 = int.parse(no2.text);
        result = num1 ~/ num2;
      });
    }
    void Mod() {
    setState(() {
      num1 = int.parse(no1.text);
      num2 = int.parse(no2.text);
      result = num1 % num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Result : ${result}",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal)),
            SizedBox(height: 25),
            TextField(
                controller: no1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter First Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.format_list_numbered),
                    label: Text("First Number"))),
            SizedBox(height: 20),
            TextField(
                controller: no2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Second Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.format_list_numbered),
                    label: Text("Second Number"))),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                    onPressed: Add,
                    child: Text(
                      "Add",
                      textDirection: TextDirection.ltr,
                    )),
                SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                    onPressed: Sub,
                    child: Text(
                      "Sub",
                      textDirection: TextDirection.ltr,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton(
                    onPressed: Mul,
                    child: Text(
                      "Mul",
                      textDirection: TextDirection.ltr,
                    )),
                SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                    onPressed: Div,
                    child: Text(
                      "Div",
                      textDirection: TextDirection.ltr,
                    )),
              ],
            ),
            ElevatedButton(
                onPressed: Mod,
                child: Text(
                  "Mod",
                  textDirection: TextDirection.ltr,
                )),
          ]),
    );
  }
}
