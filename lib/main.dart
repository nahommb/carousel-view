

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Carousel View'),),
        body: SafeArea(
          child: Column(
            children: [
              CarouselSlider(
                items: [1,2,3,4,5,6,7,8,9].map((e){
                  return Container(
                    color: Colors.deepPurpleAccent,
                    width: 250,
                   //height: 100,
                    child: Text('$e'),
                  );
                }).toList(),
                options: CarouselOptions(
                initialPage: 5,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                height: 100,
                //animateToClosest: true
              ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
