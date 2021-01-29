import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'controlpage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xFF072D72),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 10.0),
        child: Column(children: [
          Text(
            'You are a Tier 1',
            style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF251F39)),
          ),
          Text(
            '50,000 Naira Daily Limit',
            style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w600,
                color: Colors.amber[500]),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'Click on the following to boost your transaction limit.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 65.0,
          ),
          Container(
            height: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 8,
                  blurRadius: 14,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      Flexible(
                        flex: 5,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(5.0, 15.0, 52.0, 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tier 2 - 100k daily limit',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text(
                                'Drivers License, Natnl. ID or Intl. Passport',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Image.asset(
                            'assets/images/undraw_taking_selfie_lbo7.png'),
                      ),
                    ],
                  ), //Tier 3 - Unlimited
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 8,
                  blurRadius: 14,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      Flexible(
                        flex: 5,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15.0, 15.0, 110.0, 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tier 3 - Unlimited',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text(
                                'Proof of address, Utility Bills etc',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                          child: Image.asset(
                              'assets/images/creditcardfront.png',
                              alignment: Alignment(37.0, -30.0)),
                        ),
                      ),
                    ],
                  ), //Tier 3 - Unlimited
                )
              ],
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 8.0, 1.0, 7.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFF8E1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 7.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Image.asset(
                      'assets/images/badgeicon.png',
                      width: 26.0,
                      height: 28.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                    flex: 6,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF072D72)),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Tip:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.amber[500])),
                          TextSpan(text: ' you cannot upgrade to '),
                          TextSpan(
                              text: '\nTier 3',
                              style: TextStyle(fontWeight: FontWeight.w800)),
                          TextSpan(text: ' without completing '),
                          TextSpan(
                              text: 'Tier 2',
                              style: TextStyle(fontWeight: FontWeight.w800)),
                          TextSpan(text: ' requirements '),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ControlPage()),
              );
            },
            child: Text('Next page'),
          ),
        ]),
      ),
    );
  }
}
