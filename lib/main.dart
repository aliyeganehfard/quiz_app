import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 84, 0, 126),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Image.asset(
                'assets/image/question.png',
                width: 130,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
                side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 51, 5, 77),
                ),
              ),
              child: const Text(
                'start quiz',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ));
}
