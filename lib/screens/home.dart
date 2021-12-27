import 'package:sl_bmi_sinhala/constants/app_constants.dart';
import 'package:sl_bmi_sinhala/widgets/left_bar.dart';
import 'package:sl_bmi_sinhala/widgets/right_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightCOntroller=TextEditingController();
  TextEditingController _weightCOntroller=TextEditingController();
  String _textResult="";
  double  _bmiResult=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator SL 🇱🇰',
          style: TextStyle(color:accentHexColor,fontWeight: FontWeight.w200),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightCOntroller,
                    style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.w300,

                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "උස",
                      hintStyle:TextStyle (
                      fontSize:42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),

                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightCOntroller,
                    style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.w300,

                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "බර",
                      hintStyle:TextStyle (
                        fontSize:42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),

                ),
              ],
            ),
            SizedBox(height:30),
            GestureDetector(
              onTap: (){
                double _h=double.parse(_heightCOntroller.text);
                double _w=double.parse(_weightCOntroller.text);
                setState(() {
                  _bmiResult=_w/(_h*_h);
                  if(_bmiResult>25){
                    _textResult=" තො මහත වැඩී";
                  }
                  else if(_bmiResult>=18.5 && _bmiResult <= 25){
                    _textResult=" උබ නම් ගානට ඉන්නව.";
                  }
                  else if(_bmiResult <18.5 ){
                    _textResult="හොදට කාපිය මහත් වෙන්න.";
                  }

                });

              },
              child: Container(
                child: Text("ගණනය කරන්න",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: accentHexColor ),),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Text(_bmiResult.toStringAsFixed(2),style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,color: accentHexColor ),),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text("",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400,color: accentHexColor),),
              ),
            ),
            SizedBox(height: 10,),
            LeftBar(barWidth: 80),
            SizedBox(height: 10,),
            RightBar(barWidth: 60),
            SizedBox(height: 10,),
            LeftBar(barWidth: 120),
            SizedBox(height: 10,),
            RightBar(barWidth: 140),
            SizedBox(height: 10,),
            LeftBar(barWidth: 20),
            SizedBox(height: 10,),
            RightBar(barWidth: 20),
            SizedBox(height: 10,),
            LeftBar(barWidth: 120),
            

          ],


        )




      ),
    );
  }
}