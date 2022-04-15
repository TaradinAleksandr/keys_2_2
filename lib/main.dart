import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(color: Color(0xFFeceff1), width: 0));


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: 110,
                    height: 84,
                    child: Image.asset('lib/fon.png'),
                  ),
                  const SizedBox(height: 20,),
                  Text('Введите логин в виде 10 цифр номера телефона',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(fontSize: 20),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(flex:1, child: Container()),
                      Expanded(flex:4,
                        child: SizedBox(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.play(fontSize: 25),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFeceff1),
                              enabledBorder: borderStyle,
                              focusedBorder: borderStyle,
                              labelText: '+7',
                            ),
                          ),
                        ),
                      ),
                      Expanded(flex:1, child: Container()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(flex:1, child: Container()),
                      Expanded(flex:4,
                        child: SizedBox(width: 224,
                          child: TextField(
                            obscureText: true,
                            style: GoogleFonts.play(fontSize: 25),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFeceff1),
                              enabledBorder: borderStyle,
                              focusedBorder: borderStyle,
                              labelText: 'Пароль',
                            ),
                          ),
                        ),
                      ),
                      Expanded(flex:1, child: Container()),
                    ],
                  ),
                  const SizedBox(height: 28,),
                  SizedBox(
                    width: 154,
                    height: 42,
                    child:
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF7998AC),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36))
                        ),
                        onPressed: () => {},
                        child: Text('Войти', style: GoogleFonts.oswald(fontSize: 25))
                    ),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                    child: Text('Регистрация', style: GoogleFonts.oswald(fontSize: 25)),
                    onTap:  () => {},
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    child: Text('Забыли пароль', style: GoogleFonts.oswald(fontSize: 25)),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
