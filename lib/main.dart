import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                color: Colors.red,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                color: Colors.orange,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                color: Colors.yellow,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                color: Colors.green,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                color: Colors.teal,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                color: Colors.blue,
//                  child: Text('Click Me'),
              ),
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                color: Colors.purple,
//                  child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
