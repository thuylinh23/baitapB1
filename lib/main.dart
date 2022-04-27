import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  int sum = 0;
  for (int i = 1; i <= 1000; i++) {
    if (i % 2 == 0) {
      sum = sum + i;
      if (sum <= 400) {
        print(i);
      } else {
        return;
      }
    }
  }

  int count = 0;
  int count1 = 0;
  for (int i = 1; i <= 10000; i++) {
    if (i % 3 == 0) {
      // print(i);
      count++;
    }
    if (i == 10000) {
      print(count.toString());
    }
    if (i % 5 == 0) {
      count1++;
    }
    if (i == 10000) {
      print(count1.toString());
    }
  }

  List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];

  for (int x in list5) {
    if (x % 3 == 0) {
      sum += x;
    }
  }
  print(sum);

  var classInfomation = {
    "id": 12,
    "name": "Bao Flutter 1.2",
    "description": "lap hoc lap trinh flutter , hotline:0349582808",
  };
  Object? hotline = classInfomation['description'];
  print(hotline);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
