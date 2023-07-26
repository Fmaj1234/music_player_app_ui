import 'package:flutter/material.dart';
import 'package:music_player_app_ui/screens/home_page.dart';
import 'package:music_player_app_ui/screens/music_page.dart';
import 'package:music_player_app_ui/screens/play_list_stage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "playListPage": (context) => PlayListPage(),
        "musicPage": (context) => MusicPage(),
      },
    );
  }
}
