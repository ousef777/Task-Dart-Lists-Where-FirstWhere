void main(){
  // Lists
  // 1.
  List<int> ls = [5, 3, 15, 4, 1];
  int sum = 0;
  ls.forEach((num) => sum += num);
  print(sum);

  // 2.
  int largest = ls[0];
  ls.forEach((num) {
    if (num > largest) largest = num;
  });
  print(largest);


  print(filterVisitors(ls, 3));
  print(findOdds([2,4]));
  print(findOdds([2,3,4,5]));
  
}

// Where
List<int> filterVisitors(List<int> ages, int min_age) {
  return ages.where((age) => age > min_age).toList();
}

// FirstWhere and orElse
int findOdds(List<int> numbers) {
  return numbers.firstWhere((number) => number.isOdd, orElse: () => 0);
}
