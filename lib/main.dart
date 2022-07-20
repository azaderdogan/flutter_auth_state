import 'package:auth_state/caching/local_storage.dart';
import 'package:auth_state/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  LocalStorage.instance.initHive();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
