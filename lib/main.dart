import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List imageView = [
      'https://picsum.photos/200/300',
      'https://picsum.photos/200/301',
      'https://picsum.photos/200/304',
      'https://picsum.photos/200/305',
      'https://picsum.photos/200/306',
      'https://picsum.photos/200/307',
      'https://picsum.photos/200/308',
      'https://picsum.photos/200/302',
      'https://picsum.photos/200/302',
      'https://picsum.photos/200/302',
      'https://picsum.photos/200/302',
    ];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: PageView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.red,
                      child: Text("my title"),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        height: 200,
                        color: Colors.blue,
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                      itemCount: 10,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
              ),
              PageView.builder(
                itemBuilder: (context, index) => Container(
                  //width: double.infinity,
                  child: Image.network(imageView[index]),
                ),
                itemCount: imageView.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
