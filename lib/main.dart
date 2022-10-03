import 'package:apustore/Pages/Authentication/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sizeOfScreen() {
    double heightScreem = MediaQuery.of(context).size.height;

    if (heightScreem < 700) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: sizeOfScreen()
            ? const EdgeInsets.only(top: 5.0)
            : const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/undraw_shopping_app_flsj.png",
                scale: sizeOfScreen() ? 6 : 5,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Hola¡  \nBienvenido",
                  style: TextStyle(
                    fontSize: sizeOfScreen() ? 35.0 : 64.0,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            Container(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 40.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Compra lo que necesites y recoge desde la comodidad de tu hogar.",
                style: TextStyle(
                  fontSize: sizeOfScreen() ? 22.0 : 32.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: sizeOfScreen() ? 65.0 : 75.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFEAE01),
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      )),
                  child: const Center(
                    child: Text(
                      "Registrarse",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: sizeOfScreen() ? 65.0 : 75.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    )),
                child: const Center(
                  child: Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
