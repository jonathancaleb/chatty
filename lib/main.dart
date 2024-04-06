import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  await Global.iniit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Chatty",
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    );
  }
}
