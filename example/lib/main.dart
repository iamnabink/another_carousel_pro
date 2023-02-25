import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Carousel Pro',
    home: CarouselPage(),
  ));
}

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150.0,
          width: 300.0,
          child: AnotherCarousel(
            boxFit: BoxFit.cover,
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              NetworkImage(
                  'https://i.pinimg.com/originals/a2/4e/29/a24e29fc5ee1ef69ab11777f1d28641a.jpg'),
              NetworkImage(
                  'https://i.pinimg.com/originals/93/a0/ae/93a0aeb22c7e27da4796efb4b2297ea4.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
