import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var count = 0;
  int? guess;
  do {
    count++;
    stdout.write('Guess the number between 1 to 100 : ');
    var input = stdin.readLineSync();

    if (input == null) {
      print('Error, input is NULL');
      return;
    }

    guess = int.tryParse(input);

    if (guess == null) {
      print('Input error, please enter numbers only');
      continue;
    }

    if (guess == answer) {
      print('$answer CORRECT 👌 Total $count ');
    } else if (guess > answer) {
      print('$guess is TOO HIGH 👆');
    } else {
      print('$guess is TOO LOW 👇');
    }
  } while (guess != answer);

}