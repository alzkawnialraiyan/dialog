import 'package:awesome_dialog/awesome_dialog.dart';
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
      debugShowCheckedModeBanner: false,
      home: MyDialogScreen(),
    );
  }
}

class MyDialogScreen extends StatefulWidget {
  const MyDialogScreen({super.key});

  @override
  State<MyDialogScreen> createState() => _MyDialogScreenState();
}

class _MyDialogScreenState extends State<MyDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome dialog"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.topSlide,
            title: 'Dialog Title',
            desc: 'Dialog description here.............',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();
              }, child: Text("Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}

