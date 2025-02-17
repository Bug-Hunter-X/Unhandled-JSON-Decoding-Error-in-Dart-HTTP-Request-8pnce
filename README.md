# Unhandled JSON Decoding Error in Dart HTTP Request

This repository demonstrates a common error in Dart when making HTTP requests and handling JSON responses.  The `bug.dart` file shows code that fails to properly handle JSON decoding errors, while `bugSolution.dart` provides a more robust solution.

## Problem
The original code directly uses `jsonDecode` without error handling. If the API returns an invalid JSON response or a non-JSON response,  the `jsonDecode` function throws a `FormatException`, causing the application to crash.

## Solution
The improved code includes a `try-catch` block to handle potential `FormatException`s during JSON decoding.  This prevents the application from crashing and allows for more graceful error handling.