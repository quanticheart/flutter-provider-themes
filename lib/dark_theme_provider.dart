import 'package:darkmode_provider/devfestpreferences.dart';
import 'package:flutter/foundation.dart';

class DarkThemeProvider with ChangeNotifier {
  ProjectPreferences devFestPreferences = ProjectPreferences();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    devFestPreferences.setDarkTheme(value);
    notifyListeners();
  }
}
