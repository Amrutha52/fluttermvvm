import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings))
        ],
        backgroundColor: Colors.greenAccent,
        elevation: 20,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            width: 500,
          ),
          Container(
            color: Colors.green,
            width: 500,
          ),
          Container(
            color: Colors.blueGrey,
            width: 500,
          )
        ],
      ),
    );
  }
}
