import 'package:apk_note/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();
  bool invisible_pass = true;

  check_input() {
    if (username.value.text.isNotEmpty && password.value.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  validation() {
    if (username.value.text.toLowerCase() == 'robin' &&
        password.value.text == 'robin') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 57, 5, 77),
              Color.fromARGB(255, 8, 39, 72),
            ],
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  'Note X',
                  style: GoogleFonts.aladin(
                    color: Colors.amber[600],
                    fontSize: 56,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                  autofocus: true,
                  controller: username,
                  onChanged: (values) {
                    setState(() => username);
                  },
                  style: TextStyle(color: Colors.white, fontSize: 13),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                    filled: true,
                    fillColor: Color.fromARGB(255, 59, 59, 59),
                    border: InputBorder.none,
                    hintText: 'Username',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 147, 147, 147)),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: password,
                onChanged: (values) {
                  setState(() => password);
                },
                obscureText: invisible_pass,
                style: TextStyle(color: Colors.white, fontSize: 13),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 59, 59, 59),
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 147, 147, 147)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      invisible_pass ? Icons.visibility_off : Icons.visibility,
                      color: Color.fromARGB(255, 160, 160, 160),
                    ),
                    onPressed: () {
                      setState(
                        () {
                          invisible_pass = !invisible_pass;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(191, 242, 24, 24),
                      onPrimary: Colors.white,
                      onSurface: Color.fromARGB(1, 255, 61, 61),
                      textStyle:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    onPressed: check_input()
                        ? () {
                            validation()
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                  )
                                : null;
                          }
                        : null,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          color: check_input()
                              ? Colors.white
                              : Color.fromARGB(255, 147, 147, 147)),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
