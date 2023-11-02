import 'package:flutter/material.dart';
import 'package:game_task/size.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MapText(),
        SizedBox(
          height: height * 0.2,
        ),
        const ListViewMap(),
      ],
    );
  }
}

class MapText extends StatelessWidget {
  const MapText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF049ECC),
      padding: EdgeInsets.only(top: height * 0.05),
      child: const Text(
        "Maps",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ListViewMap extends StatelessWidget {
  const ListViewMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xFF504F4F),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.imageString, required this.text, super.key});

  final String imageString, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF698D19),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(imageString),
          Text(
            text,
            style: const TextStyle(color: Color(0xFFFCA3A3)),
          )
        ],
      ),
    );
  }
}
