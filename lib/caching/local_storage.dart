import 'package:hive/hive.dart';

class LocalStorage {
  static LocalStorage instance = LocalStorage._();
  LocalStorage._();
  Box? cacheBox;
  String boxName = 'auth_box';
  initHive() async {
    cacheBox = await Hive.openBox(boxName);
  }
  Future<void> put(String key, dynamic value) async {
    await cacheBox?.put(key, value);
  }
}
