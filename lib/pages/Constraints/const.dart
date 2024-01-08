import 'package:flutter/material.dart';

const TextStyle txtDesign =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

class ButtonStyles {
  static ButtonStyle amberButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.amber),
      // Add more style properties as needed
    );
  }
}
