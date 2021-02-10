import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:spaceX/app/modules/home/controllers/home_controller.dart';
import 'package:spaceX/app/widgets/launchCard.dart';
import 'package:spaceX/app/widgets/rocketCard.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SpaceX',
          style: TextStyle(fontFamily: "Sans", fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
        leading: Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: Get.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TabBar(
                      labelColor: Color(0xffFF003D),
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Color(0xffFF003D),
                      indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffFF003D)),
                          insets:
                              EdgeInsets.only(left: 0, right: 30, bottom: -5)),
                      onTap: (index) {},
                      tabs: controller.list,
                      controller: controller.controller,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: AnimatedBuilder(
                      animation: controller.controller.animation,
                      builder: (index, snapShot) {
                        return Transform.translate(
                          offset: Offset(1.2, 2.2),
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            controller: controller.controller,
                            children: [
                              ListView(
                                children: [
                                  launchCard(
                                      name: "Starlink 2",
                                      company: "CCAES SLC 40",
                                      date: "16-10-2016",
                                      image: Hero(
                                          tag: "das1",
                                          child: Image.asset(
                                              "assets/images/crs.png"))),
                                  SizedBox(
                                    height: 53,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("LAUNCH DATE",
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffFF003D),
                                                fontSize: 10)),
                                        SizedBox(
                                          height: 11,
                                        ),
                                        Text("Thu Oct 17 5:30:00 2019",
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text("LAUNCH SITE",
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffFF003D),
                                                fontSize: 10)),
                                        SizedBox(
                                          height: 11,
                                        ),
                                        Text(
                                            "Cape Canaveral Air Force Station Space Launch Complex 40",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16)),
                                        SizedBox(
                                          height: 11,
                                        ),
                                        Text("COUNT DOWN",
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffFF003D),
                                                fontSize: 10)),
                                        SizedBox(
                                          height: 11,
                                        ),
                                        Text("5 Hrs 30mins more...",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontFamily: "Sans",
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: ListView(
                                      physics: BouncingScrollPhysics(
                                          parent:
                                              AlwaysScrollableScrollPhysics()),
                                      children: [
                                    launchCard(
                                        name: "Starlink 2",
                                        company: "CCAES SLC 40",
                                        date: "16-12-2014",
                                        image: Hero(
                                          tag: "Launch1",
                                          child: Image.asset(
                                              "assets/images/falconsat01.png"),
                                        )),
                                    launchCard(
                                        name: "DemoSat",
                                        company: "AAAES SLC 40",
                                        date: "06-07-2018",
                                        image: Image.asset(
                                            "assets/images/falcon9.png")),
                                    launchCard(
                                        name: "Falcon 9 Test",
                                        company: "CCAES SLC 40",
                                        date: "18-03-2019",
                                        image: Hero(
                                          tag: "Launch2",
                                          child: Image.asset(
                                              "assets/images/demosat02.png"),
                                        )),
                                    launchCard(
                                        name: "CRS - 2",
                                        company: "CCAES SLC 40",
                                        date: "18-12-2019",
                                        image: Hero(
                                            tag: "das1",
                                            child: Image.asset(
                                                "assets/images/crs.png"))),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ])),
                              ListView(
                                children: [
                                  rocketCard(
                                      image: Hero(
                                        tag: "Launch1",
                                        child: Image.asset(
                                            "assets/images/falconsat01.png"),
                                      ),
                                      name: "Falcon 1",
                                      containerBgColor: Color(0xffFF0606),
                                      containerText: "INACTIVE"),
                                  rocketCard(
                                      image: Image.asset(
                                          "assets/images/falcon09.png"),
                                      name: "Falcon 9",
                                      containerBgColor: Color(0xff16BE27),
                                      containerText: "ACTIVE"),
                                  rocketCard(
                                      image:  Hero(
                                        tag: "Launch2",
                                        child: Image.asset(
                                            "assets/images/demosat02.png"),
                                      ),
                                      name: "Big Falcon Rocket",
                                      containerBgColor: Color(0xffFF0000),
                                      containerText: "INACTIVE")
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
