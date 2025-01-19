# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart when working with JSON responses: attempting to access a key that might not exist.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

The problem arises when making an API call and expecting a specific key in the JSON response. If that key is missing, the application will throw an exception, potentially crashing. 

The solution emphasizes safe key access using the `containsKey` method and proper error handling using `try-catch` blocks, ensuring a more resilient application.