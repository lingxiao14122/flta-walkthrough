// Copyright (c) 2021 Razeware LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

void main() {
  // Variables, Comments, and Data Types

  var myAge = 35;
  print(myAge);

  // This is a single-line comment.
  print(myAge); // This is also a single-line comment.

  /*
   This is a multi-line comment block. This is useful for long
   comments that span several lines.
   */

  int yourAge = 27;
  print(yourAge);

  // Basic Dart Types

  var pi = 3.14;
  print(pi); // 3.14

  // The dynamic Keyword

  dynamic numberOfKittens;
  numberOfKittens = 'There are no kittens!';
  print(numberOfKittens); // There are no kittens!
  numberOfKittens = 0;
  print(numberOfKittens); // 0
  numberOfKittens = 0.5;
  print(numberOfKittens); // 0.5
  bool areThereKittens = false;
  print(areThereKittens); // false
  numberOfKittens = 1;
  areThereKittens = true;
  print(areThereKittens); // true

  // Operators

  print(40 + 2);
  print(44 - 2);
  print(21 * 2);
  print(84 / 2);

  print(42 == 43);
  print(42 != 43);

  print(42 < 43);
  print(42 >= 43);

  var value = 42.0;
  value += 1;
  print(value);
  value -= 1;
  print(value);
  value *= 2;
  print(value);
  value /= 2;
  print(value);

  value++;
  print(value);

  print(392 % 50);

  print((41 < 42) && (42 < 43));
  print((41 < 42) || (42 > 43));

  print(!(41 < 42));

  // Strings

  var firstName = 'Albert';
  String lastName = "Einstein";

  var physicist = "$firstName $lastName likes the number ${84 / 2}";
  print(physicist);

  var quote =
      'If you can\'t explain it simply\nyou don\'t understand it well enough.';
  print(quote);

  var rawString =
      r"If you can't explain it simply\nyou don't understand it well enough.";
  print(rawString);

  // Immutability

  const speedOfLight = 299792458;
  print(speedOfLight);

  final planet = 'Jupiter';
  // planet = 'Mars'; // error: planet can only be set once
  final String moon = 'Europa';
  print('$planet has a moon $moon');

  // Nullability

  // String middleName = 'May';
  // String? middleName = null;
  String? middleName;
  print(middleName);

  var name = middleName ?? 'none';
  print(name);
  print(middleName?.length);

  // Conditionals

  var animal = 'fox';
  if (animal == 'cat' || animal == 'dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is NOT a house pet.');
  }

  if (animal == 'cat' || animal == 'dog') {
    print('Animal is a house pet.');
  } else if (animal == 'rhino') {
    print('That\'s a big animal.');
  } else {
    print('Animal is NOT a house pet.');
  }

  // While Loops

  var i = 1;
  while (i < 10) {
    print(i);
    i++;
  }

  i = 1;
  do {
    print(i);
    i++;
  } while (i < 10);

  // i = 1;
  // do {
  //   print(i);
  //   if (i == 5) {
  //     continue;
  //   }
  //   ++i;
  // } while (i < 10);

  i = 1;
  do {
    print(i);
    if (i == 5) {
      break;
    }
    ++i;
  } while (i < 10);

  // For Loops

  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    sum += i;
  }
  print("The sum is $sum");

  // Lists

  List<String> desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  final numbers = [42, -1, 299792458, 100];

  final firstDessert = desserts[0];
  print(firstDessert); // cookies

  desserts.add('cake');
  print(desserts);

  desserts.remove('donuts');
  print(desserts);

  for (final dessert in desserts) {
    print('I love to eat $dessert.');
  }

  // Maps

  Map<String, int> calories = {
    'cake': 500,
    'donuts': 150,
    'cookies': 100,
  };

  final donutCalories = calories['donuts'];
  print(donutCalories);

  calories['brownieFudgeSundae'] = 1346;
  print(calories);

  // Functions

  bool isBanana(String fruit) {
    return fruit == 'banana';
  }

  var fruit = 'apple';
  print(isBanana(fruit)); // false

  // Optional Parameters

  String fullName(String first, String last, [String? title]) {
    if (title == null) {
      return '$first $last';
    } else {
      return '$title $first $last';
    }
  }

  print(fullName('Joe', 'Howard'));
  print(fullName('Albert', 'Einstein', 'Professor'));

  // Named Parameters and Default Values

  bool withinTolerance({required int value, int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(min: 1, max: 5, value: 11));
  print(withinTolerance(value: 5));

  // Anonymous Functions

  final onPressed = () {
    print('button pressed');
  };
  onPressed();

  // final onPressed = () => print('button pressed');

  final drinks = ['water', 'juice', 'milk'];
  final bigDrinks = drinks.map((drink) => drink.toUpperCase());
  print(bigDrinks);
}
