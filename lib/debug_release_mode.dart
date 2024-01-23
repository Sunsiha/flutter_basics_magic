import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// You can use this in your code base. Read more from https://medium.com/@sunisha.guptan/cracking-the-code-debugging-magic-in-flutter-release-mode-f2e089a61f78
loggerInfo(){
  /// approach 1 - But why do you want to use another package for logs?
  var logger = Logger();
  logger.d('Debug message');  // A quiet note only in debug mode
  logger.i('Info message');   // Heard in both release and debug modes
  logger.w('Warning message'); // Heard in both release and debug modes
  logger.e('Error message');   // Heard in both release and debug modes
  /// approach 2 - Flutter provides by default.
  log('debug message'); // Only in debug mode
  /// approach 3
  print('Always visible');  // Seen by everyone, in both release and debug modes
  /// approach 4
  debugPrint('Starting the app');  // A debug note visible only in debug mode
  /// approach 5
  if (kDebugMode) {
    print('debug:');
  }
}