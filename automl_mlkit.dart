import 'dart:async';

import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class AutomlMlkit {
  static const MethodChannel _channel = const MethodChannel('automl_mlkit');

  /// Loads model from dataset folder in the app's cache dir
  static Future<String> loadModelFromCache({@required String dataset}) async {
    return _channel.invokeMethod('loadModelFromCache', {"dataset": dataset});
  }

  static Future<dynamic> runModelOnImage({@required String imagePath}) async {
    return _channel
        .invokeMethod("runModelOnImage", {"imagePath": imagePath});
  }
}