import 'package:chatty/common/services/storage.dart';
import 'package:chatty/common/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Global {
  static Future iniit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}
