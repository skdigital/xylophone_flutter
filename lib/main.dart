//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

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
              Key(
                audioFile: 'note1',
                color: Colors.red,
              ),
              Key(
                audioFile: 'note2',
                color: Colors.orange,
              ),
              Key(
                audioFile: 'note3',
                color: Colors.yellow,
              ),
              Key(
                audioFile: 'note4',
                color: Colors.green,
              ),
              Key(
                audioFile: 'note5',
                color: Colors.teal,
              ),
              Key(
                audioFile: 'note6',
                color: Colors.blue,
              ),
              Key(
                audioFile: 'note7',
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Key extends StatelessWidget {
  Key({@required this.audioFile, @required this.color});

  String audioFile;
  var color;

  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            player.play('$audioFile.wav');
          },
          child: Text(''),
        ),
      ),
    );
  }
}
