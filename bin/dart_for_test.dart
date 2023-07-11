void main() {
  List<Map<String, dynamic>> data = [
    {'id': 1, 'name': 'Elephant', 'age': 50},
    {'id': 2, 'name': 'Dog', 'age': 5},
    {'id': 3, 'name': 'Cat', 'age': 5},
    {'id': 4, 'name': 'Ant', 'age': 1},
    {'id': 5, 'name': 'Alligator', 'age': 20},
    {'id': 6, 'name': 'Bird', 'age': 3},
    {'id': 7, 'name': 'Horse', 'age': 2},
    {'id': 8, 'name': 'Tiger', 'age': 24},
  ];

  print("No.1 Result = ${example1()}");
  print("No.2.1 Result = ${example2(data)}");
  print("No.2.2 Result = ${example3(data)}");
}

int example1() {
  int count = 0;
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      count++;
    }
  }
  return count;
}

List<String> example2(List<Map<String, dynamic>> data) {
  data.sort((a, b) => a['age'].compareTo(b['age']));
  List<String> names = data
      .where((animal) => animal['age'] <= 20)
      .map((animal) => animal['name'].toString())
      .toList();
  return names;
}

List<String> example3(List<Map<String, dynamic>> data) {
  List<String> names = data
      .where((animal) => animal['name'].toString().startsWith('A'))
      .map((animal) => animal['name'].toString())
      .toList();
  return names;
}
