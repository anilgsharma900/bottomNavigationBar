import 'package:bottom_navigation/camera_view.dart';
import 'package:bottom_navigation/home_view.dart';
import 'package:bottom_navigation/shape_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: const MyHomePage(title: 'Bottom Navigation Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final pages = const <Widget>[HomeView(), CameraView(), ShapeView(), ShapeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedFontSize: 22,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera", tooltip: "anil"),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility_sharp), label: "Shape"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "abc")
          ]),
    );
  }
}
