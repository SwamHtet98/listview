import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<String> names = []; //0
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: ("Enter Name"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String name = nameController.text;
              setState(() {
                names.add(name);
              });
            },
            child: Text("add"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    child: Text(
                      names[index],
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.all(10.0),
                    color: Colors.red.withOpacity(.5),
                  ),
                );
              },
              itemCount: names.length,
            ),
          )
        ],
      ),
    );
  }
}
