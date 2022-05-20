import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valorant_tips/constants/app_colors.dart';
import 'package:valorant_tips/screens/error_screen.dart';
import 'package:valorant_tips/screens/main_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key,required this.internetInfo}) : super(key: key);

  var internetInfo;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: (child) => MaterialApp(
        title: 'Valo Guide',
        debugShowCheckedModeBanner: false,
        // internet check
        home: internetInfo == ConnectivityResult.none ? ErrorScreen() : const MainScreen(),
        theme: AppTheme().valoTheme,
      ),
    );
  }
}
