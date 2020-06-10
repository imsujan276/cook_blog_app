import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cookblog/custom_widgets/shadowButton.dart';

class EmailScreen extends StatelessWidget {
  EmailScreen({@required this.option});
  final String option;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF3EE),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.5 , vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "$option here to write your food blog",
              style: TextStyle(
                fontFamily: "Segoe UI",
                fontSize: 35.5,
                color:Color(0xfff67300),
              ),
            ),
//            new Container(
//              height: 154.00,
//              width: 272.00,
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Icon(Icons.fastfood , color: Color(0xfff67300) , size: 42.5),
//                  SizedBox(width: 10),
//                  FaIcon(FontAwesomeIcons.signInAlt , color: Color(0xfff67300) , size: 42.5)
//                ],
//              ),
//            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Username",
                icon: FaIcon(FontAwesomeIcons.userCheck , color: Color(0xFFF67300) , size: 22.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                  borderSide: BorderSide(color: Color(0xFFF67300) , width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF67300), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF67300), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.vpn_key , color: Color(0xFFF67300) , size: 22.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                  borderSide: BorderSide(color: Color(0xFFF67300) , width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF67300), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF67300), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(17.5)),
                ),
              ),
            ),
            ShadowButton(
              icon: Icon(Icons.edit , color: Color(0xfff67300) , size: 24.5),
              text: 'Let\'s write ',
              textSize: 22.5,
              width: 210,
              height: 48,
              press: null,
            ),
          ],
        )
      ),
    );
  }
}