import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  UserGlobalController userGlobalController = Get.find();

  void redirectToHome() {
    Get.offAllNamed("menu");
  }

  void submit() {
    if (txtEmail.text == "Rifkatria21@gmail.com" && txtPassword.text == "Rifka21.") {
      userGlobalController.nama = "Rifka";
      userGlobalController.namaLengkap = "Rifka Tria permana";
      userGlobalController.email = "Rifkatria21@gmail.com";
      userGlobalController.pekerjaan = "-";
      userGlobalController.hobi = "-";
      userGlobalController.saveSession();

      Get.snackbar("Sukses", "Login Berhasil!");
      redirectToHome();
    } else {
      Get.snackbar("Error", "Login Gagal!");
    }
  }
}
