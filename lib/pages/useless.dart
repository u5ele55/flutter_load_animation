import "package:flutter/material.dart";

class UselessPage extends StatelessWidget {
  static String routeName = "/useless";
  const UselessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Very useless page"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView.builder(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(
                  "$index",
                  style: TextStyle(fontSize: 18),
                ),
                onLongPress: () => {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text(
                      "Congrats! You just long-pressed tile!",
                      style: TextStyle(fontSize: 16),
                    )),
                  )
                },
              ),
              color: const Color.fromARGB(255, 255, 239, 193),
            ),
          ),
        ),
      ),
    );
  }
}
