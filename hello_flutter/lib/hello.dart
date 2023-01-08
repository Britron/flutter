import 'dart:io';
import 'dart:math';

void main(){
  const pi = 3.14;
  const abc = pi*2;


  final pi2 = 3.14;//ONE time set
  //pi2 = 3.90;
  var r = Random();
  var answer = r.nextInt(100)+1;

  while(true){
    stdout.write('Guess the number from 1 and 100 : ');
    var input = stdin.readLineSync();
    if (input == null) {
      print('eror, input is NULL');
      return;
    }
    var guess = int.tryParse(input);

    if (guess == null) {
      print('input error,enter number only');
      continue;
    }
    var bool = doGuess(guess, answer);
    if(bool){
      break;
    }
  }
}

bool doGuess(int guess, int answer) {
  if (guess == answer) {
    print('CORRECT! The answer is $answer');
    return true;
    //print('CORRECT! The answer is ${answer+1}');
  } else if (guess > answer) {
    print('too high');
    return false;
  } else {
    print('too low');
    return false;
  }
}

