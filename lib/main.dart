import 'package:flutter/material.dart';
import 'package:tsehay_art_store/screens/Account.dart';
import 'package:tsehay_art_store/screens/Community.dart';
import 'package:tsehay_art_store/screens/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Base()
    );
  }
}
class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}
class _BaseState extends State<Base> {
  int _currentindex = 0;
  final tabs = [
    Home_page(),
    Community(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              backgroundColor: Colors.black,
              label: 'Community'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.green,
              label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}