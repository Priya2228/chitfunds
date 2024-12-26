import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUtils {
  static Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await _getPrefs();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  static Future<int?> getUserId() async {
    final prefs = await _getPrefs();
    return prefs.getInt('staffId');
  }
}