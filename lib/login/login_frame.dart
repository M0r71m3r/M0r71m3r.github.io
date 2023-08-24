import 'package:flutter/material.dart';
import 'package:flutter_web/main.dart';

class LoginFrame extends StatefulWidget {
  const LoginFrame({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginFrame> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  bool check = false;

  static const brdrRds = BorderRadius.all(Radius.circular(20));
  static const edgeInsets = EdgeInsets.fromLTRB(20, 10, 20, 0);
  static const border = OutlineInputBorder(
    borderSide: BorderSide(color: color1, width: 2.0),
    borderRadius: brdrRds,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Work in progress"),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400, //todo
          height: 400, //todo
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: edgeInsets,
                child: TextField(
                  controller: _loginController,
                  style: const TextStyle(color: color1),
                  decoration: const InputDecoration(
                    enabledBorder: border,
                    border: border,
                    hintText: 'Логин',
                    hintStyle: TextStyle(color: color1),
                    prefixIcon: Icon(
                      Icons.person,
                      color: color1,
                    ),
                  ),
                ),
              ),
              Container(
                padding: edgeInsets,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: const TextStyle(color: color1),
                  decoration: const InputDecoration(
                    enabledBorder: border,
                    border: border,
                    hintText: 'Пароль',
                    hintStyle: TextStyle(color: color1),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: color1,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 25, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: color1,
                          checkColor: color2,
                          splashRadius: 15,
                          hoverColor: color1,
                          side: const BorderSide(
                            color: color1,
                            width: 1,
                          ),
                          value: check,
                          onChanged: (value) => setState(() {
                            check = value!;
                          }),
                        ),
                        const Text(
                          "Запомнить меня",
                          style: TextStyle(color: color1),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        print("bzzzz....");
                      },
                      child: const Text("Забыли пароль?"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: edgeInsets,
                child: ElevatedButton(
                  onPressed: () {
                    print(
                        "${_loginController.text} ${_passwordController.text}");
                    if (true) {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => {}//const NavigatorFrame(),
                      //   ),
                      // );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape:
                          const RoundedRectangleBorder(borderRadius: brdrRds),
                      minimumSize: const Size.fromHeight(50)),
                  child: const Text("Войти"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
