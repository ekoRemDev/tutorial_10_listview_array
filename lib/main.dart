import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  List<int> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View App Bar"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('item number $index'),
                trailing: Icon(Icons.add),
              );
            }),
      ),
    );
  }
}
