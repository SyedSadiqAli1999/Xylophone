import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  // Expanded buildKey({required Color color,required int num}) {
  //   return Expanded(
  //     child: Container(
  //       color: Colors.amberAccent,
  //       child: TextButton(
  //         onPressed: () {
  //           AssetsAudioPlayer.newPlayer().open(
  //             Audio("assets/note1.wav"),
  //           );
  //         },
  //         child: SizedBox(),
  //       ),
  //     ),
  //   );
  // }
  int num = 1;
  void playsound() {
    setState(() {
    num=Random().nextInt(6)+1;
    });
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$num.wav"),
    );
  }

  List<Color> colorlist = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
            itemCount: colorlist.length,
            itemBuilder: (_, i) {
              return Expanded(
                child: Container(
                  height: 70,
                  color: colorlist[i],
                  child: TextButton(
                    onPressed: () {
                      playsound();
                    },
                    child: SizedBox(),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
