import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        title: const Text('Card App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image.png'),
            ),
            const Text(
              "Salamat Zhylkybaev",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 42,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            const Divider(
              indent: 65,
              endIndent: 65,
              height: 0,
              thickness: 2,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: const Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.phone_outlined,
                    color: Color(0xff056C5C),
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '+ 996 504 281 989',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff056C5C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              child: const Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.email_outlined,
                    color: Color(0xff056C5C),
                    size: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'zhylkybaev.salamat@gmail.com',
                    style: TextStyle(
                      color: Color(0xff056C5C),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
