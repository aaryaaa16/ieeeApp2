import 'package:flutter/material.dart';
import 'package:sponsers/interface.dart';

void main() {
  runApp(MaterialApp(
    home: Sponsors(),
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}

class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "SPONSORS",
          style: TextStyle(
            fontFamily: 'Mars',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ui()
        ],
      ),
    );
  }
}
