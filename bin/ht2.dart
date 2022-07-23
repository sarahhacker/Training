import 'package:ht2/ht2.dart' as ht2;
import 'dart:io';


void main(List<String> arguments) {
  print(checkNumber());

  print("enter your name:");
  String word = stdin.readLineSync()!;
  print(calcLetters(word));
}

checkNumber() {
  //array of even
  var arr1 = [];
  //array of odd
  var arr2 = [];

  var s = true;
  var operation;

  loop:
  while (s) {
    print("Enter a number");
    String? n = stdin.readLineSync()!;
    switch (operation) {
      case "exit":
        if (n.runtimeType == String) {
          print("invalid entry");
        }
        break loop;

      default:
        int n = int.parse(stdin.readLineSync()!);
        if (n % 2 == 0) {
          print("Even number");
          arr1.add(n);
          print(arr1);
        } else {
          print("Odd Number");
          arr2.add(n);
          print(arr2);
        }
    }
  }
}

calcLetters(word) {
  int score = 0;
  var entry = word.toLowerCase();
  List array = entry.split('');
  List A = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'];
  List D = ['D', 'G'];
  List B = ['B', 'C', 'M', 'P'];
  List F = ['F', 'H', 'V', 'W', 'Y'];
  List K = ['k'];
  List J = ['J', 'X'];
  List Q = ['Q', 'Z'];

  array.forEach((element) {
    for (element in A) {
      score++;
    }

    for (element in D) {
      score += 2;
    }

    for (element in B) {
      score += 3;
    }

    for (element in F) {
      score += 4;
    }

    for (element in K) {
      score += 5;
    }

    for (element in J) {
      score += 8;
    }

    for (element in Q) {
      score += 10;
    }
  });
  return score;
}

