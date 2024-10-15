import 'package:flutter/material.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController judulController = TextEditingController();
  TextEditingController penulisController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('POST LOKAL API TEST', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(hintText: 'Judul'),
            ),
            TextField(
              controller: penulisController,
              decoration: InputDecoration(hintText: 'Penulis'),
            ),
            OutlinedButton(onPressed: (){
              PostLokal.postLokal(judulController.text, penulisController.text);
            }, child: Text('POST'))
          ],
        ),
      ),
    ),
    );
  }
}
