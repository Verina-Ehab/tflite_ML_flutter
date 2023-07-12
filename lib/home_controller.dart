import 'dart:io';

import 'package:get/state_manager.dart';
import 'package:tflite/tflite.dart';

class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  bool loading = false;
  File? image;
  List? outputs;

  @override
  void onInit() {
    loading = true;
    loadModel().then((value) {
      loading = false;
      update();
    });
    super.onInit();
  }

  loadModel() async {
    await Tflite.loadModel(
        model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
  }

  @override
  void onClose() {
    Tflite.close();
    super.onClose();
  }
}
