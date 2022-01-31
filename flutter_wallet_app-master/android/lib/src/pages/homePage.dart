
import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/src/awesome_card.dart';
import 'package:flutter_wallet_app/src/theme/light_color.dart';
import 'package:flutter_wallet_app/src/widgets/balance_card.dart';
import 'package:flutter_wallet_app/src/widgets/title_text.dart';

import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _appBar() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://jshopping.in/images/detailed/591/ibboll-Fashion-Mens-Optical-Glasses-Frames-Classic-Square-Wrap-Frame-Luxury-Brand-Men-Clear-Eyeglasses-Frame.jpg"),
        ),
        SizedBox(width: 15),
        TitleText(text: "Hello,"),
        Text(' Name,',
            style: GoogleFonts.mulish(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: LightColor.navyBlue2)),
        Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.short_text,
          color: Theme.of(context).iconTheme.color,
        )
      ],
    );
  }



  Widget _operationsWidget() {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
     // _icon(Icons.credit_card_outlined, "VISA",),
       IconButton(
            icon: Icon(Icons.credit_card_outlined),

            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditCard()));
            },
    ),
      //_icon(Icons.account_circle, "Saller"),
      ],
    );
  }

  /*Widget _icon(IconData icon, String text) {

    return Column(

      children: <Widget>[
        GestureDetector(

          child: Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff3f3f3),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ]),
            child: Icon(icon)

          ),
        ),
        Text(text,

            style: GoogleFonts.mulish(
                textStyle: Theme
                    .of(context)
                    .textTheme
                    .headline4,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff76797e))),
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 35),
                  _appBar(),
                  SizedBox(
                    height: 40,
                  ),
                  TitleText(text: "My wallet"),
                  SizedBox(
                    height: 20,
                  ),
                  BalanceCard(),
                  SizedBox(
                    height: 50,
                  ),
                  TitleText(
                    text: "Operations",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _operationsWidget(),
                ],
              )),
        )));
  }
}
