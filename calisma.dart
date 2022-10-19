import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  print("Would you like rock, paper or scissors");
  final select = stdin.readLineSync();

  var playerMove;
  if (select == "rock") {
    playerMove = Move.rock;
  } else if (select == "paper") {
    playerMove = Move.paper;
  } else if (select == "scissors") {
    playerMove = Move.scissors;
  } else {
    print("invaild input");
  }

  Random rnd;
  int min = 1;
  int max = 3;
  rnd = new Random();
  final r = min + rnd.nextInt(max - min);

  final compMove = Move.values[r];

  print("You played : $playerMove");
  print("Computer played : $compMove");

  if (playerMove == Move.rock && compMove == Move.scissors ||
      playerMove == Move.paper && compMove == Move.rock ||
      playerMove == Move.scissors && compMove == Move.paper) {
    print("You win");
  } else if (playerMove == compMove) {
    print("Draw");
  } else {
    print("you lose");
  }
}
