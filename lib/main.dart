import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Atelier 4 - StatefulWidget"),
              const SizedBox(height: 20),
              Text("La valeur du compteur est : $compteur"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        compteur--;
                      });
                    },
                    child: const Text("-"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        compteur = 0;
                      });
                    },
                    child: const Text("Réinitialiser"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        compteur++;
                      });
                    },
                    child: const Text("+"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
