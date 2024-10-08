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
  TextEditingController userNameControlller = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,// to select keyboard type
              obscureText: true, // masking for password
              controller: userNameControlller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                      hintText: "Enter UserName",
                labelText: "User Name",
               prefixIcon: Icon(Icons.lock),
               suffixIcon: Icon(Icons.toggle_off),

               // icon: Icon(Icons.favorite) // to display outside the box
              ),

            ),
            ElevatedButton(
                onPressed: (){
                  print(userNameControlller.text);
                },
                child: Text("Login"))
          ],
        ),
      )
      // SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //
      //     children: [
      //       Container(
      //         color: Colors.red,
      //         height: 100,
      //         width: 500,
      //       ),
      //       Container(
      //         color: Colors.green,
      //         height: 100,
      //         width: 500,
      //       ),
      //       Container(
      //         color: Colors.blueGrey,
      //         height: 100,
      //         width: 500,
      //       )
      //     ],
      //   ),
      // ),
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       width: 500,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       width: 500,
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //       width: 500,
      //     )
      //   ],
      // ),
    );
  }
}
