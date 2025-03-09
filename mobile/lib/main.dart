import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:schizo_chess/chess_game.dart';

void main() {
  final game = ChessGame();
  runApp(GameWidget(game: game));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
