```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, JSON decoding errors, etc.)
    print('Error fetching data: $e');
    // Consider rethrowing the exception or returning an error value
    rethrow; // For example, to propagate the error up the call stack
  }
}
```