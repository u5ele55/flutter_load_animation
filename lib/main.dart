import 'package:flutter/material.dart';
import 'package:splash_screen_anarchy/pages/home.dart';
import 'package:splash_screen_anarchy/pages/unknown.dart';
import 'package:splash_screen_anarchy/pages/useless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/firstLaunch",
      onGenerateRoute: (settings) {
        if (settings.name == "/firstLaunch") {
          return MaterialPageRoute(
              builder: (context) => const HomePage(openAnimation: true));
        }
        if (settings.name == "/") {
          return MaterialPageRoute(builder: (context) => const HomePage());
        }
        if (settings.name == UselessPage.routeName) {
          return MaterialPageRoute(builder: (context) => const UselessPage());
        }

        return MaterialPageRoute(builder: (context) => const UnknownPage());
      },
    );
  }
}
