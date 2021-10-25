import 'package:flutter/material.dart';


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
              Planet("assets/mercury.png", "Mercury"),
              Planet("assets/venus.png", "Venus"),
              Planet("assets/earth.png", "Earth"),
              Planet("assets/mars.png", "Mars"),
              Planet("assets/jupiter.png", "Jupiter"),
              Planet("assets/saturn.png", "Saturn"),
              Planet("assets/uranus.png", "Uranus"),
              Planet("assets/neptune.png", "Neptune"),

            ],
          ),
        ),
      ),
    );
  }
}



class Planet extends StatelessWidget {
  late String path;
  late String name;
  Planet(String path, String name){
    this.path = path;
    this.name = name;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 12),
          width: 80,
          height: 80,
          child: Image.asset(path),
          decoration: BoxDecoration(
            color: Colors.indigo[900],
            border: Border.all(
              color: Color(0xFF1A237B),
              width: 4,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.indigo[900],
            fontWeight: FontWeight.w200,
          ),
          
        ),
        Icon(
          Icons.info,
          color: Colors.indigo[900],
        ),
      ],
    );
  }
}

void main() {
  runApp(Screen());
}
