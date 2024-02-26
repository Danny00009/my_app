import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/main.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Back to home',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 40,
            ),
            child: Text(
              "Welcome to Daniel's App",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  const BoxShadow(
                    offset: Offset(0, 5),
                    color: Color.fromARGB(255, 240, 151, 34),
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'What are you looking for?',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Container(),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
