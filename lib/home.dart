import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/community.dart';
import 'package:whatsapp/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Index = 0;
  List<Widget> Pages = [Ch(), Updates(), Community(), Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("whatsapp"),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            Index=value;
          });
        },
        selectedItemColor: Colors.black,
        currentIndex: Index,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: "communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "calls"),
        ],
      ),
      body: Pages[Index],
    );
  }
}
