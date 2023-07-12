import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:tflite_ml_flutter/home_controller.dart';

class Home extends GetView<HomeControllerImp>{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(children: [
        // controller.image == null ? Container() : Image.file(controller.image!),
        // controller.image = Image.file(controller.image!) ?? Container()
        const SizedBox(height: 20,),
        controller.outputs == null ? Container() : Text("${controller.outputs![0]["label"]}")
      ],),
    );
  }
}