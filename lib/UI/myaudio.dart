import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:ocarina/ocarina.dart';

final player = OcarinaPlayer(
  asset: 'assets/audios/John.mp3',
);

final assetsAudioPlayer = AssetsAudioPlayer();
assets_app() {
  mybody() {
    player.load();
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          //Background Image
          height: double.infinity,
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            image: DecorationImage(
              image: AssetImage('images/KissTheSky.jpg'),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text("Le Castle Vania - John Wick Medley"),
                    subtitle: Text("Audio from Assets"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {
                          print("Playing");
                          player.play();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.pause),
                        onPressed: () {
                          print("Pausing");
                          player.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: () {
                          print("Stopping");
                          player.stop();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Audio from Network
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text("Roses"),
                    subtitle: Text("Audio from Netwok"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {
                          print("Playing");
                          assetsAudioPlayer.open(
                            Audio.network(
                                "https://github.com/Wayne-code/Flutter/raw/master/Roses.mp3"),
                          );
                          assetsAudioPlayer.play();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.pause),
                        onPressed: () {
                          print("Pausing");
                          assetsAudioPlayer.pause();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: () {
                          print("Stopping");
                          assetsAudioPlayer.stop();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Video from Network
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Video"),
                    subtitle: Text("Network Video"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 352,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Media Player"),
      ),
      body: mybody(),
    ),
  );
}
