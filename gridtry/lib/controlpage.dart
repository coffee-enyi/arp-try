import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class ControlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xFF072D72),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(32.0, 130.0, 32.0, 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF072D72),
              ),
              height: 130,
              constraints: BoxConstraints(maxWidth: double.infinity),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 16,
                    child: Container(
                        //width: 50,
                        height: 95,
                        decoration: BoxDecoration(
                            //border: Border.all(),
                            ),
                        padding: EdgeInsets.fromLTRB(24.0, 3.0, 0.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tier 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.9,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'N50,000 Daily Limit',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.6,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              'Increase your Limit here',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.6,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        )),
                  ),
                  //Spacer(flex: 1),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 6,
                    child: Container(
                      width: 50,
                      height: 500,
                      child: Image.asset('assets/images/trophy.png',
                          alignment: Alignment(-7.0, -30.0), scale: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                IconBox('assets/images/envelope.png'),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: WTextBox('Push Notifications'),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: ControlSwitch(true),
                ),
              ],
            ),
            Row(
              children: [
                IconBox('assets/images/lockcloud.png'),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: WTextBox('Security'),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconBox('assets/images/settingsgear.png'),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 5,
                  child: WTextBox('Account Settings'),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}

class IconBox extends StatelessWidget {
  String image;

  IconBox(this.image);

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, scale: 1.2);
  }
}

class WTextBox extends StatelessWidget {
  String text;

  WTextBox(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
      ),
      padding: const EdgeInsets.fromLTRB(18.0, 15.0, 5.0, 1.0),
      width: 50,
      height: 50,
    );
  }
}

class ControlSwitch extends StatelessWidget {
  bool value;

  ControlSwitch(this.value);

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        trailing: CupertinoSwitch(
          value: value,
          onChanged: (v) => value,
        ),
        onTap: () {},
      ),
    );
  }
}
