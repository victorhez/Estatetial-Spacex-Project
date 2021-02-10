import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spaceX/app/modules/home/views/detail_screen.dart';

launchCard({String name, Widget image, String date, String company}) {
  return GestureDetector(
    onTap: () => Get.to(RocketDetailView(
        company: company, date: date, image: image, name: name)),
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 128,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Color(0xfff2e0e0), offset: Offset(0, 4))
            ]),
        child: Row(
          children: [
            SizedBox(
              width: 24,
            ),
            image,
            SizedBox(
              width: 54,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 9,
                ),
                Text(
                  "LAUNCH",
                  style: TextStyle(
                      fontFamily: "Sans",
                      color: Color(0xffFF003D),
                      fontSize: 10),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: "Sans",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  company,
                  style: TextStyle(
                      fontFamily: "Sans", color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  date,
                  style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                      fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
