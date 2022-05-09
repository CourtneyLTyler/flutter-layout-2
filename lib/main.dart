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
          title: Text('Container'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              // child: Text('hello'),
              width: 300,
              height: 300,
              // child: FlutterLogo(),
              decoration: BoxDecoration(
                color: Colors.orange,
                gradient: LinearGradient(
                    colors: [Colors.pink.shade50, Colors.pink.shade500]),
                image: DecorationImage(
                  image: NetworkImage('http://bit.ly/flutter_tiger'),
                  fit: BoxFit.none,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
            ),
          ],
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
