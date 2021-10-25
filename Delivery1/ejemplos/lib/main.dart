import 'package:flutter/material.dart';

class Planet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 12),
          width: 80,
          height: 80,
          child: Image.asset('assets/mercury.png'),
          decoration: BoxDecoration(
            color: Colors.indigo[900],
            border: Border.all(
              color: Color(0xFF1A237B),
              width: 4,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperCool App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Planet Discovery'),
          backgroundColor: Colors.blue[900],
        ),
        body: Align(
          alignment: Alignment(-0.9, -0.9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                child: Image.asset('assets/mercury.png'),
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  border: Border.all(
                    color: Color(0xFF1A237B),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Planet(),
              Planet(),
              Planet(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen());
}
