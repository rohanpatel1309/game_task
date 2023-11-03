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
          height: height * 0.055,
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
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700),
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
          physics: const BouncingScrollPhysics(),
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
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.015),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/bg_image.png",
                    fit: BoxFit.fitWidth,
                  )),
              Positioned(
                  top: width * 0.01,
                  right: width * 0.05,
                  child: Image.asset(
                    "assets/images/stars.png",
                    fit: BoxFit.fitWidth,
                  )),
              Positioned(
                  bottom: width * 0.01,
                  left: width * 0.04,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text("The Bridge (Map/Minigame)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.w600)),
                      Text(
                          "TheBridge is a PvP modality characterized by\nhaving to score in the enemy base, from one",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w600)),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomButton(
                  imageString: "assets/images/download.png",
                  text: "Download",
                  bgColor: Color(0xFF698D19)),
              SizedBox(
                width: width * 0.05,
              ),
              const CustomButton(
                  imageString: "assets/images/white_star.png",
                  text: "Favorite",
                  bgColor: Color(0xFF049ECC)),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.imageString,
      required this.text,
      required this.bgColor,
      super.key});

  final String imageString, text;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.38,
      height: height * 0.05,
      padding: EdgeInsets.symmetric(
          vertical: height * 0.009, horizontal: width * 0.001),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: FittedBox(
        child: Row(
          children: [
            Image.asset(imageString),
            SizedBox(
              width: width * 0.015,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Color(0xFFFCA3A3),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
