import "package:flutter/material.dart";
import "package:flutteronmay2023/torch_lite.dart";
import "package:torch_controller/torch_controller.dart";
/*
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Center(
    child: TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {},
      child: Text('May 2023'),
    ),
  ))));
}
*/

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torch Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TorchLite(), // ThemeData // MaterialApp
    );
  }
}
