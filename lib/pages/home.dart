import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:splash_screen_anarchy/pages/useless.dart';
import 'package:splash_screen_anarchy/widgets/slide_animation.dart';

class HomePage extends StatefulWidget {
  final bool openAnimation;
  const HomePage({Key? key, this.openAnimation = false}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Some useless information",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                OutlinedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, UselessPage.routeName),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text(
                    "Some useless page",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.openAnimation) ..._openScreenAnimation()
        ],
      ),
    );
  }

  _openScreenAnimation() => [
        SlideAnimation(
          endOffset: const Offset(0.0, -1.0),
          delay: 2000,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 178, 173),
              ),
            ),
          ),
        ),
        SlideAnimation(
          endOffset: const Offset(0.0, 1.0),
          delay: 2000,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 156, 255, 147),
              ),
            ),
          ),
        )
      ];
}
