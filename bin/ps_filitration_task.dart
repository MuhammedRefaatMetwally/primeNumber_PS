import 'package:args/args.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  printAllPrimeNumberBetween(7, 20);
}

/*
I have been researching to understand the problem and recognize that there are better solutions,
 such as using ( i * i ). I attempted to use an AI tool for assistance but didn't find it helpful to understand it,
 as I still don't fully grasp the concept and need more time to understand it.
 I want to be honest about my efforts; I have searched extensively,
including on YouTube, and I did not resort to cheating.
*/

bool isPrimeNumber(int num) {
  if (num == 2) return true;
  if (num < 2) return false;

  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void printAllPrimeNumberBetween(int startRange, int endRange) {
  List<int> primeNumber = [];
  for (int i = startRange +1; i < endRange; i++) {
    if (isPrimeNumber(i)) {
      primeNumber.add(i);
    }
  }
  print(primeNumber);
}
