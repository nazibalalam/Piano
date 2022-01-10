import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ExpandedTile extends StatelessWidget {
  ExpandedTile({
    Key? key,
    required this.fileName,
    this.color = Colors.blue,
  }) : super(key: key);

  final String? fileName;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          AudioPlayer audioPlayer = AudioPlayer();
          audioPlayer.play("assets/sounds/$fileName.mp3", isLocal: true);
          print("Playing $fileName...");
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(
              fileName!,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
