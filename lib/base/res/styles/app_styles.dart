import 'package:flutter/material.dart';


Color primary = const Color(0xFF687daf);
Color bgColor = const Color(0xffeeedf2);

class AppStyles {
  static Color primaryColor = primary;
  static Color backgroundColor = bgColor;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color (0xFF526799);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color:textColor,
  );
  static TextStyle headlineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color:textColor,
  );
  static TextStyle headlineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w500,
    color:  textColor,
  );
  static TextStyle headlineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}