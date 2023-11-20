import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = 'Belum Ada Aksi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interaction"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                actionLabel = "Pengguna Melakukan Tap";
              });
            },
            onDoubleTap: () {
              setState(() {
                actionLabel = "Pengguna Melakukan Double Tap";
              });
            },
            onLongPress: () {
              setState(() {
                actionLabel = "Pengguna Melakukan Press";
              });
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Aksi",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(actionLabel)
        ],
      )),
    );
  }
}
