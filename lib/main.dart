import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Data Table"),
),
      body: Center(
        child: SingleChildScrollView(
          child: DataTable(
            border: TableBorder.all(
              color: Colors.black,
              width: 2
            ),
            columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Email")),
              DataColumn(label : Text("Password"))
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("ViGyaS Tech")),
                DataCell(Text("name@gmail.com")),
                DataCell(Text("123456")),
              ]), DataRow(cells: [
                DataCell(Text("ViGyaS Tech")),
                DataCell(Text("name@gmail.com")),
                DataCell(Text("123456")),
              ]),
            ],
          ),
        ),
      ),

    );
  }
}
