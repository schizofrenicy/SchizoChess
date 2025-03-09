import 'package:flame/game.dart';
import 'package:flame/widgets.dart';
import 'package:schizo_chess/board_field.dart';

class ChessGame extends FlameGame {
  static const double boardFieldSize = 100;

  @override
  Future<void> onLoad() async {
    final boardFields = List.generate(
      64,
      (index) {
        final x = index % 8;
        final y = index ~/ 8;
        return BoardField()
          ..size = Vector2.all(boardFieldSize)
          ..position = Vector2(x * boardFieldSize, y * boardFieldSize);
      },
    );

    await world.addAll(boardFields);

    camera.viewfinder.visibleGameSize = Vector2.all(boardFieldSize * 8);
    camera.viewfinder.position = Vector2.all(boardFieldSize * 4);
    camera.viewfinder.anchor = Anchor.center;
  }
}
