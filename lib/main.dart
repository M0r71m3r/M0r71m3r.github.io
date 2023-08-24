import 'package:flutter/material.dart';

import 'login/login_frame.dart';

const color1 = Colors.amber;
const color2 = Colors.black;

void main() => runApp(const Launcher());

class Launcher extends StatelessWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(
          primarySwatch: color1,
          scaffoldBackgroundColor: color2,
          textTheme: const TextTheme(
            headline4: TextStyle(
              color: color1,
            ),
          )),
      debugShowCheckedModeBanner: false,
      home: const LoginFrame(),
    );
  }
}
