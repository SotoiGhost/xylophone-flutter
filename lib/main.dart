import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNoteSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createNoteKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNoteSound(soundNumber: soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createNoteKey(
                color: Colors.blue,
                soundNumber: 1,
              ),
              createNoteKey(
                color: Colors.indigoAccent,
                soundNumber: 2,
              ),
              createNoteKey(
                color: Colors.green,
                soundNumber: 3,
              ),
              createNoteKey(
                color: Colors.red,
                soundNumber: 4,
              ),
              createNoteKey(
                color: Colors.teal,
                soundNumber: 5,
              ),
              createNoteKey(
                color: Colors.amber,
                soundNumber: 6,
              ),
              createNoteKey(
                color: Colors.deepOrange,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
