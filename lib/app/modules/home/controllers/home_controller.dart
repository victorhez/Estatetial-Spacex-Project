import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin{
  //TODO: Implement HomeController
TabController controller;
  RxInt selectedIndex = 0.obs;
  final count = 0.obs;
 List<Widget> list=[
      Text(
                              "Upcoming",
                              style:
                                  TextStyle(fontFamily: "Sans", fontSize: 18),
                            ),
                            Text(
                              "Launches",
                              style:
                                  TextStyle(fontFamily: "Sans", fontSize: 18),
                            ),
                            Text(
                              "Rockets",
                              style:
                                  TextStyle(fontFamily: "Sans", fontSize: 18),
                            ),
 ];
  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: list.length, vsync: this);
    controller.addListener(() {
        selectedIndex.value = controller.index;
      });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
