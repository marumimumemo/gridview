import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      _photoItem("a"),
      _photoItem("b"),
      _photoItem("c"),
      _photoItem("d"),
      _photoItem("e"),
      _photoItem("f"),
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.count(
                crossAxisCount: 2,
                children: list
            )
        )
    );
  }

  Widget _photoItem(String image) {
    var assetsImage = "images/" + image + ".jpg";
    return Container(
      child: Image.asset(assetsImage, fit: BoxFit.cover,),
    );
  }
}