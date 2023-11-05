import 'package:flutter/material.dart';
import 'package:game_task/size.dart';

class ListView2 extends StatelessWidget {
  const ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/screen_bg.png'),
            fit: BoxFit.cover),
      ),
      child: Column(children: const [
        Header(),
        CustomGridView(),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.035,
        right: width * 0.0358,
        top: height * 0.07,
        bottom: height * 0.025,
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/back.png')),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.005),
              child: const Text(
                "Seeds",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/setting.png')),
        ],
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 2,
        children: const [
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/grid_img.png'),
        Positioned(
            right: width * 0.015,
            top: width * 0.015,
            child: Image.asset(
              'assets/images/white_star.png',
              height: width * 0.04,
              width: width * 0.04,
            )),
        Positioned(
            bottom: width * 0.05, left: 0, right: 0, child: const Details()),
      ],
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.015, vertical: width * 0.01),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w700),
            ),
            Image.asset(
              'assets/images/stars.png',
              width: width * 0.13,
            ),
          ],
        ),
        const Text(
          'TheBridge is a PvP modality\ncharacterized by having to score in the',
          style: TextStyle(fontSize: 8, color: Color(0xFFC6C5C5)),
        )
      ]),
    );
  }
}
