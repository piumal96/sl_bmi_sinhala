import 'package:sl_bmi_sinhala/constants/app_constants.dart';
import 'package:sl_bmi_sinhala/widgets/left_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator SL',
          style: TextStyle(color:accentHexColor,fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
