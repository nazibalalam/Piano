import 'package:flutter/material.dart';
import 'package:flutter_app_tutorial_expanded_sound/expanded_tile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Piano App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            ExpandedTile(fileName: "notification-1", color: Colors.blue[100]),
            ExpandedTile(fileName: "notification-2", color: Colors.blue[300]),
            ExpandedTile(fileName: "notification-3", color: Colors.blue[500]),
            ExpandedTile(fileName: "notification-4", color: Colors.blue[700]),
          ],
        ),
      ),
    );
  }
}
