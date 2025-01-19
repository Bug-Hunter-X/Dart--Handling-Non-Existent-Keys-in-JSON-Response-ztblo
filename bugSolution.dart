```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      // Safe key access
      final value = jsonResponse.containsKey('data') ? jsonResponse['data'] : null;
      if (value != null) {
        print(value);
      } else {
        print('Key "data" not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```