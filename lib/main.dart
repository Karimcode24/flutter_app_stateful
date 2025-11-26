import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
  double degre = 0; // pour le slider

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Atelier 4 - StatefulWidget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "La valeur du compteur est : $compteur",
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 20),

              // --- Les 3 IconButton : -, reset, + ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur--;
                      });
                    },
                    icon: const Icon(Icons.remove),
                    iconSize: 35,
                  ),

                  const SizedBox(width: 10),

                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur = 0;
                      });
                    },
                    icon: const Icon(Icons.refresh),
                    iconSize: 35,
                  ),

                  const SizedBox(width: 10),

                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur++;
                      });
                    },
                    icon: const Icon(Icons.add),
                    iconSize: 35,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // --- Texte pour le slider ---
              const Text(
                "Merci de choisir le degré de rotation",
                style: TextStyle(fontSize: 18),
              ),

              // --- Slider ---
              Slider(
                value: degre,
                min: 0,
                max: 360,
                onChanged: (value) {
                  setState(() {
                    degre = value;
                  });
                },
              ),

              // --- Affichage du degré ---
              Text(
                "Le degré choisi est : ${degre.toStringAsFixed(0)}°",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
