import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/bottom/bottom_navi.dart';
import 'package:proyek_akhir_dicoding/bottom/trips.dart';
import 'package:proyek_akhir_dicoding/homePage/homePage.dart';

import 'loginPage/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      debugShowCheckedModeBanner: false,
      home: const BelajarNavBar(),
    );
  }
}
