import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  List<Widget> pages = [
    Page1(),
    Page3(),
    Page2(),
  ];
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: PageView(
          onPageChanged: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          controller: _pageController,
          children: pages,
        ),
        
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              if (_pageIndex == 0) {
                _pageController.jumpToPage(pages.length - 1);
              } else {
                _pageController.jumpToPage(--_pageIndex);
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              backgroundColor: Colors.greenAccent,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}