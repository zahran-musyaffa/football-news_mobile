import 'package:flutter/foundation.dart';

/// Returns the base URL for API requests based on the platform.
/// For web (Chrome), use localhost:8000
/// For Android emulator, use 10.0.2.2:8000
String getBaseUrl() {
  if (kIsWeb) {
    // Running on web (Chrome, etc.)
    return 'http://localhost:8000';
  } else {
    // Running on Android emulator or other platforms
    return 'http://10.0.2.2:8000';
  }
}

