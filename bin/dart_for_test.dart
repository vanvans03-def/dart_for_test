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
  print("No.2.1 Result = ${example2_1(data)}");
  print("No.2.2 Result = ${example2_2(data)}");
  print("No.3 Result = ${example3()}");
  print("No.4 Result = ${example4()}");
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

List<String> example2_1(List<Map<String, dynamic>> data) {
  data.sort((a, b) => a['age'].compareTo(b['age']));
  List<String> names = data
      .where((animal) => animal['age'] <= 20)
      .map((animal) => animal['name'].toString())
      .toList();
  return names;
}

List<String> example2_2(List<Map<String, dynamic>> data) {
  List<String> names = data
      .where((animal) => animal['name'].toString().startsWith('A'))
      .map((animal) => animal['name'].toString())
      .toList();
  return names;
}

int example3() {
  List<int> data = [1, 44, 5, 89, 100, 1, 44];
  int max = data[0];
  int min = data[0];
  int index = 0;
  for (int i = 0; i < data.length; i++) {
    if (data[i] > max) {
      max = data[i];
      index = i;
    }
    if (data[i] < min) {
      min = data[i];
    }
  }
  return index;
}

List<int> example4() {
  List<List<int>> data = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  List<int> resultArray = [];
  for (int i = 0; i < data.length; i++) {
    for (int j = 0; j < data[i].length; j++) {
      resultArray.add(data[i][j]);
    }
  }
  return resultArray;
}
