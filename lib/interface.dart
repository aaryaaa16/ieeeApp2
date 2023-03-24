import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ui extends StatefulWidget {
  const ui({Key? key}) : super(key: key);

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {
  final images = [
    'assets/asset1.png',
    'assets/asset2.jpg',
    'assets/asset3.jpg',
    'assets/asset4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    // final ScrollController _firstController = ScrollController();

    return CupertinoScrollbar(
      thickness: 6.0,
      thicknessWhileDragging: 20.0,
      radius: const Radius.circular(34.0),
      radiusWhileDragging: Radius.zero,
      // thumbVisibility: true,
      // controller: _firstController,
      child: ListView.builder(
        // controller: _firstController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 15, bottom: 15),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.fill
                )
              ),
            ),
          );
        }
      ),
    );
  }
}
