import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text("my title"),
              ),
              ListView.separated(
                itemBuilder: (context, index) => Container(
                  height: 200,
                  color: Colors.blue,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
