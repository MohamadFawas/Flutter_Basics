import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  String bottonName = 'Click';
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter home page'),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            /*
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bottonName = "clicked";
                    });
                  },
                  child: Text('Click Me'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bottonName = "clicked";
                    });
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
            */
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.orange,
                    padding: EdgeInsets.all(25),
                  ),
                  onPressed: () {
                    setState(() {
                      bottonName = "clicked";
                    });
                  },
                  child: Text('Click Me'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    setState(() {
                      bottonName = "clicked";
                    });
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.blue,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                // color: Colors.green,
              ),
              label: 'Setting',
            ),
          ],
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
