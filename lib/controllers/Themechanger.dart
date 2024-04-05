import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  // ThemeData darkTheme = ThemeData.dark().
  // copyWith(
  //   // Customize your dark theme properties here
  //   scaffoldBackgroundColor: Colors.grey[900], // Example: Dark background color
  //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
  //       .apply(bodyColor: Colors.white),
  //   canvasColor: Colors.grey[800], // Example: Dark canvas color
  // );
  //
  // ThemeData lightTheme = ThemeData.light().copyWith(
  //   // Customize your light theme properties here
  //   scaffoldBackgroundColor: Colors.white, // Example: Light background color
  //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
  //       .apply(bodyColor: Colors.black),
  //   canvasColor: Colors.grey[100], // Example: Light canvas color
  // );
  //

  void toggleTheme() {
    _currentTheme =
    _currentTheme == ThemeData.dark() ? ThemeData.light() : ThemeData.dark();
    notifyListeners();
  }

}