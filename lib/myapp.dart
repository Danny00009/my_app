import 'package:flutter/material.dart';
import 'package:my_app/nextpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daniel's App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in to \nyour account',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Spacer(),
            const TextField(
              decoration: InputDecoration(
                hintText: 'E-mail',
                icon: Icon(
                  Icons.email_rounded,
                  color: Colors.green,
                ),
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            const Spacer(),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                icon: Icon(
                  Icons.password_rounded,
                  color: Colors.green,
                ),
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NextPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              ),
              label: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
