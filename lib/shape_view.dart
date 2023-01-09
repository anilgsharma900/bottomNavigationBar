import 'package:flutter/material.dart';

class ShapeView extends StatefulWidget {
  const ShapeView({Key? key}) : super(key: key);

  @override
  State<ShapeView> createState() => _ShapeViewState();
}

class _ShapeViewState extends State<ShapeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShapeView"),
      ),
      body: Center(
          child: Container(
        child: Text("this is shape page"),
      )),
    );
  }
}
