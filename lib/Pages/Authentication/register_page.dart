import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool sizeOfScreen() {
    double heightScreem = MediaQuery.of(context).size.height;

    if (heightScreem < 700) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: sizeOfScreen()
                ? const EdgeInsets.only(top: 5.0)
                : const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/undraw_Starry_window_re_0v82.png",
                    scale: sizeOfScreen() ? 8 : 5,
                  ),
                ),
                Center(
                  child: Text(
                    "Regístrate",
                    style: TextStyle(
                      fontSize: sizeOfScreen() ? 24.0 : 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 45.0,
                    top: sizeOfScreen() ? 5.0 : 15.0,
                  ),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Nombres",
                    style: TextStyle(
                      fontSize: sizeOfScreen() ? 12.0 : 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      contentPadding: sizeOfScreen()
                          ? const EdgeInsets.all(14.0)
                          : const EdgeInsets.all(0.0),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 45.0, top: 10.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "E-mail",
                    style: TextStyle(
                      fontSize: sizeOfScreen() ? 12.0 : 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      contentPadding: sizeOfScreen()
                          ? const EdgeInsets.all(14.0)
                          : const EdgeInsets.all(0.0),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 45.0, top: 10.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Contraseña",
                    style: TextStyle(
                      fontSize: sizeOfScreen() ? 12.0 : 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      contentPadding: sizeOfScreen()
                          ? const EdgeInsets.all(14.0)
                          : const EdgeInsets.all(0.0),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: sizeOfScreen() ? 15.0 : 30.0,
                      bottom: sizeOfScreen() ? 5.0 : 10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: sizeOfScreen() ? 60.0 : 70.0,
                      width: sizeOfScreen() ? 200.0 : 240.0,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFEAE01),
                          borderRadius: BorderRadius.circular(
                            25.0,
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          )),
                      child: Center(
                        child: Text(
                          "Crear Cuenta",
                          style: TextStyle(
                            fontSize: sizeOfScreen() ? 24.0 : 30.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Continua con",
                    style: TextStyle(
                      fontSize: sizeOfScreen() ? 12.0 : 16.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: sizeOfScreen() ? 10.0 : 15.0,
                  ),
                  child: Container(
                    height: sizeOfScreen() ? 40.0 : 50.0,
                    width: sizeOfScreen() ? 100.0 : 120.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png"),
                        const Text("  Google"),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 30.0, bottom: 25.0, top: 15.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const Text(
                        "Ya tengo una cuenta. ",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: const Text(
                          " Iniciar Sesion",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
