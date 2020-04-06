import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneButton(Colors.red, 1),
              XylophoneButton(Colors.orange, 2),
              XylophoneButton(Colors.yellow, 3),
              XylophoneButton(Colors.green, 4),
              XylophoneButton(Colors.teal, 5),
              XylophoneButton(Colors.blue, 6),
              XylophoneButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final int tone;
  final Color color;
  const XylophoneButton(this.color, this.tone);
  void playSound() {
    final player = AudioCache();
    player.play('note${this.tone}.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          this.playSound();
        },
        color: this.color,
        child: null,
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
