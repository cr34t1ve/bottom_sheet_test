import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


void main() {
  runApp(MaterialApp(
    home: SheetPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SheetPage extends StatefulWidget {
  @override
  _SheetPageState createState() => _SheetPageState();
}

class _SheetPageState extends State<SheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A2C39),
      appBar: AppBar(
        backgroundColor: Color(0xFF2A2C39),
        elevation: 0.0,
        leadingWidth: 100,
        leading: GestureDetector(
          child: Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_back_outlined, color: Color(0xFFF6F5FA)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Back',
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
        // centerTitle: false,
        // title: Text(
        //   'Back',
        //   style: TextStyle(
        //     color: Color(0xFFF6F5FA)
        //   ),
        // ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 84.0,
            ),
            Image.asset(
              'assets/images/Ellipse 1.png',
              width: 124.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sebastian Livingstone',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/arrow_up.png'),
                SizedBox(
                  height: 4.5,
                ),
                Image.asset('assets/images/Ellipse 2.png'),
                SizedBox(
                  height: 4.5,
                ),
                Image.asset('assets/images/Ellipse 2.png'),
                SizedBox(
                  height: 4.5,
                ),
                Image.asset('assets/images/Ellipse 2.png')
              ],
            ),
            SizedBox(
              height: 70.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GHC 350.75',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFFF6F5FA),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'USD 62.50',
                  style: TextStyle(
                      color: Color(0xFF76778B),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            GestureDetector(
              onTap: () {
                showMaterialModalBottomSheet(
                  elevation: 100.0,
                  barrierColor: Colors.black.withOpacity(0.7),
                  expand: false,
                  isDismissible: true,
                  context: context,
                  backgroundColor: Color(0xFF2A2C39),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  builder: (context) => Container(
                    height: 650,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Image.asset(
                          'assets/images/Home Indicator.png',
                          height: 6,
                        ),
                        SizedBox(
                          height: 100.5,
                        ),
                        Image.asset(
                          'assets/images/check.png',
                          height: 25.0,
                        ),
                        SizedBox(
                          height: 130.5,
                        ),
                        Text(
                          'Money sent',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Color(0xFFD5D5DD),
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/small arrow up.png',
                              height: 15,
                            ),
                            SizedBox(
                              width: 7.92,
                            ),
                            Text(
                              'GHC 350.75',
                              style: TextStyle(
                                fontFamily: 'SF Pro',
                                fontSize: 22.0,
                                color: Color(0xFFD5D5DD),
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          'to Sebastian Livingstone',
                          style: TextStyle(
                            color: Color(0xFF9FA0A9),
                            fontSize: 18.0,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                        SizedBox(
                          height: 111.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Save the receipt',
                              style: TextStyle(
                                color: Color(0xFFB6B6BE),
                                fontFamily: 'SF Pro',
                                fontSize: 18.0
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  )
                );
              },
              child: Container(
                height: 55.0,
                width: 194.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(110)),
                    color: Color(0xFFD5D5DD)),
                child: Center(
                  child: Text(
                    'Send Money',
                    style: TextStyle(
                        color: Color(0xFF222431),
                        fontFamily: 'SF Pro',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add a reason for sending',
                  style: TextStyle(
                    color: Color(0xFF9FA0A9),
                    fontSize: 18.0,
                    fontFamily: 'SF Pro',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
