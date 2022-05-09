import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layouts with Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello Flutter Layouts',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: () {
            print('you rang?');
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_comment),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alarm),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_location),
          ),
        ],
      ),
    );
  }
}
