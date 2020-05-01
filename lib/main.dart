import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DigitalLock(),
    );
  }
}

//-----------------------------------------------------------------------------
class DigitalLock extends StatefulWidget {
  @override
  _DigitalLockState createState() => _DigitalLockState();
}

class _DigitalLockState extends State<DigitalLock> {
//-----------------------------------------------------------------------------
  String tx_buff_str = "";

//-----------------------------------------------------------------------------
  void keepinTxBuff(String pstr) {
    if (tx_buff_str.length < 10) {
      tx_buff_str += pstr;
    }
    print(tx_buff_str);
  }

  void sendTxBuff(String pstr) {
    print(pstr);
  }

  Widget dlBtn_0() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("0"),
          onPressed: () {
            this.keepinTxBuff("0");
          }),
    );
  }

  Widget dlBtn_1() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("1"),
          onPressed: () {
            this.keepinTxBuff("1");
          }),
    );
  }

  Widget dlBtn_2() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("2"),
          onPressed: () {
            this.keepinTxBuff("2");
          }),
    );
  }

  Widget dlBtn_3() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("3"),
          onPressed: () {
            this.keepinTxBuff("3");
          }),
    );
  }

  Widget dlBtn_4() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("4"),
          onPressed: () {
            this.keepinTxBuff("4");
          }),
    );
  }

  Widget dlBtn_5() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("5"),
          onPressed: () {
            this.keepinTxBuff("5");
          }),
    );
  }

  Widget dlBtn_6() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("6"),
          onPressed: () {
            this.keepinTxBuff("6");
          }),
    );
  }

  Widget dlBtn_7() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("7"),
          onPressed: () {
            this.keepinTxBuff("7");
          }),
    );
  }

  Widget dlBtn_8() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("8"),
          onPressed: () {
            this.keepinTxBuff("8");
          }),
    );
  }

  Widget dlBtn_9() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("9"),
          onPressed: () {
            this.keepinTxBuff("9");
          }),
    );
  }

  Widget dlBtnCancel() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("Cancel"),
          onPressed: () {
            tx_buff_str = "";
          }),
    );
  }

  Widget dlBtnOk() {
    return Container(
      width: 80.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("Ok"),
          onPressed: () {
            this.sendTxBuff("C2-" + tx_buff_str);
          }),
    );
  }

  Widget dlBtnStop() {
    return Container(
      width: 100.0,
      height: 50.0,
      child: RaisedButton(
          child: Text("Stop"),
          onPressed: () {
            this.sendTxBuff("C0-" + tx_buff_str);
          }),
    );
  }

  Widget dlBtnStart() {
    return Container(
      width: 100.0,
      height: 50.0,
      child: RaisedButton(child: Text("Start"), onPressed: () {
            this.sendTxBuff("C1-" + tx_buff_str);

      }),
    );
  }

  Widget dlBtnChangePincode() {
    return Container(
      width: 100.0,
      height: 50.0,
      child: RaisedButton(child: Text("Change Pincode"), onPressed: () {}),
    );
  }

  Widget dlBtnAlarm() {
    return Container(
      width: 100.0,
      height: 50.0,
      child: RaisedButton(child: Text("Alarm"), onPressed: () {}),
    );
  }

  Widget dlKeyPad() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            dlBtn_1(),
            dlBtn_2(),
            dlBtn_3(),
            dlBtnStop(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            dlBtn_4(),
            dlBtn_5(),
            dlBtn_6(),
            dlBtnStart(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            dlBtn_7(),
            dlBtn_8(),
            dlBtn_9(),
            dlBtnChangePincode(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            dlBtnCancel(),
            dlBtn_0(),
            dlBtnOk(),
            dlBtnAlarm(),
          ],
        ),
      ],
    );
  }

//-----------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RmutR Digital Lock V1"),
      ),
      body: dlKeyPad(),
    );
  }
}

