import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'FABサンプル',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('メニュークリック！');
          }
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            color: Colors.white54,
            onPressed: () {
              print('aaa');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white54,
            onPressed: () {
              print('bbb');
            },
          ),
        ],
        elevation: 6,
        titleSpacing: 12,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        backgroundColor: Colors.green,
        onPressed: () {
          print('FABクリック！');
        },
        // mini: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        // elevation: 10,
        highlightElevation: 1,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   icon: Icon(Icons.message),
      //   label: Text('Message'),
      //   onPressed: () {
      //     print('object');
      //   },
      //   foregroundColor: Colors.orange,
      //   backgroundColor: Colors.black,
      // ),
    );
  }
}

