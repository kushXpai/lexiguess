import 'package:flutter/material.dart';
import 'package:lexiguess/test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/test',
    routes: {
      '/': (context) => MyApp(),
      '/test': (context) => test(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/test');
            },
            child: Text('Open Test Page'),
          ),
        ),
      ),
    );
  }
}
