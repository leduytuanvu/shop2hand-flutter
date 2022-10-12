import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/sign_up_controller.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
import 'package:shop2hand/presentation/widgets/text_field_widget.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({super.key});

  signUp() async {
    final result = await controller.signUp();
    if (result) {
      Get.offAllNamed(Routers.home);
    } else {
      Get.snackbar('ERROR', 'SIGN UP FAILED!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFieldWidget(
              controller: controller.usernameTextController, lable: 'Username'),
          TextFieldWidget(
              controller: controller.fullNameTextController,
              lable: 'Full Name'),
          TextFieldWidget(
              controller: controller.passwordTextController, lable: 'Password'),
          TextFieldWidget(
              controller: controller.phoneTextController, lable: 'Phone'),
          TextFieldWidget(
              controller: controller.genderTextController, lable: 'Gender'),
          TextFieldWidget(
              controller: controller.descriptionTextController,
              lable: 'Description'),
          TextFieldWidget(
              controller: controller.buildingIDTextController,
              lable: 'Buiding ID'),
          ElevatedButton(
            child: const Text('Sign Up'),
            onPressed: () {
              signUp();
            },
          ),
        ],
      ),
    );
  }
}
