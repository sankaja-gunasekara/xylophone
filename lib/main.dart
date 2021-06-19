import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int noteNumber) {
      final player = AudioCache();
      player.play('note$noteNumber.wav');
    }

    Expanded buildKey(int noteNumber, Color color) {
      return Expanded(
        child: TextButton(
          //style: TextButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            playSound(noteNumber);
          },
          child: Container(
            //width: 200,
            //height: 50,
            color: color,
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
