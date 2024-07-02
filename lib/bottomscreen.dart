import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_currentIndex == 0
              ? "FIRST SCREEN"
              : _currentIndex == 1
                  ? "SECOND SCREEN"
                  : "THIRD SCREEN"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: _currentIndex == 0
                    ? Color.fromARGB(255, 8, 201, 21)
                    : _currentIndex == 1
                        ? Colors.blue
                        : Colors.red,
              ),
            ),
            Row(children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 0;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 0
                        ? Color.fromARGB(255, 23, 137, 218)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            color: _currentIndex == 0
                                ? Color.fromARGB(255, 243, 34, 1)
                                : Color.fromARGB(255, 156, 193, 216)),
                      ),
                      Icon(Icons.home)
                    ])),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 1;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 1
                        ? Color.fromARGB(255, 43, 218, 23)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "search",
                        style: TextStyle(
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.black),
                      ),
                      Icon(Icons.search)
                    ])),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  _currentIndex = 2;
                  setState(() {});
                },
                child: Container(
                    color: _currentIndex == 2
                        ? Color.fromARGB(255, 198, 17, 177)
                        : const Color.fromARGB(255, 236, 234, 234),
                    child: Column(children: [
                      Text(
                        "setting",
                        style: TextStyle(
                            color: _currentIndex == 2
                                ? Color.fromARGB(255, 218, 59, 23)
                                : Colors.black),
                      ),
                      Icon(Icons.settings)
                    ])),
              )),
            ])
          ],
        ));
  }
}
