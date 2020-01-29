import 'package:flutter/material.dart';

main() {
  runApp(Agecalculater());
}

class Agecalculater extends StatefulWidget {
  @override
  _AgecalculaterState createState() => _AgecalculaterState();
}

class _AgecalculaterState extends State<Agecalculater> {
  var currentdate=TextEditingController();
  var currentmonth=TextEditingController();
  var curretryear=TextEditingController();
  var birthdate=TextEditingController();
  var birthmonth=TextEditingController();
  var birthyear=TextEditingController();
  int currentdate1,currentmonth2,curretryear3,birthdate1,birthmonth2,birthyear3,calculateddate,calculatedmonth,calculatedyear;


  var month=[31,28,31,30,31,30,31,31,30,31,30,31];

  pressed(){
    setState(() {
     currentdate1=int.parse(currentdate.text);
     currentmonth2=int.parse(currentmonth.text);
     curretryear3=int.parse(curretryear.text);
     birthdate1=int.parse(birthdate.text);
     birthmonth2=int.parse(birthdate.text);
     birthyear3=int.parse(birthyear.text);
     
    if(birthdate1>currentdate1){
      currentdate1=currentdate1+month[birthmonth2-1];
      currentmonth2=currentmonth2-1;
    }
    if(birthmonth2>currentmonth2){
      curretryear3=curretryear3-1;
      currentmonth2=currentmonth2+12;
    }
    calculateddate=currentdate1-birthdate1;
    calculatedmonth=currentmonth2-birthmonth2;
    calculatedyear=curretryear3-birthyear3;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Agecalculater",
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Age Calculator"),
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 90),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Please Enter current date",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 80,
                      margin: EdgeInsets.fromLTRB(12.5, 15, 12.5, 7),
                      child: TextField(
                          controller: currentdate,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.blue[50],
                              filled: true,
                              // Style: TextStyle(fontSize: 20),
                              hintText: "Date",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))))),
                  Container(
                    width: 80,
                    margin: EdgeInsets.fromLTRB(12.5, 15, 0, 7),
                    child: TextField(
                        controller: currentmonth,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Colors.blue[50],
                            filled: true,
                            // Style: TextStyle(fontSize: 20),
                            hintText: "Month",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)))),
                  ),
                  Container(
                    width: 80,
                    margin: EdgeInsets.fromLTRB(12.5, 15, 12.5, 7),
                    child: TextField(
                       controller: curretryear,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Colors.blue[50],
                            filled: true,
                            // Style: TextStyle(fontSize: 20),
                            hintText: "Year",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)))),
                  ),
                ],
              ),
              Container(
                child: Text(
                  "Please Enter date of birth",
               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20), ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 80,
                      margin: EdgeInsets.fromLTRB(12.5, 15, 12.5, 7),
                      child: TextField(
                         controller: birthdate,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.blue[50],
                              filled: true,
                              // Style: TextStyle(fontSize: 20),
                              hintText: "Date",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))))),
                  Container(
                    width: 80,
                    margin: EdgeInsets.fromLTRB(12.5, 15, 0, 7),
                    child: TextField(
                         controller: birthmonth,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Colors.blue[50],
                            filled: true,
                            // Style: TextStyle(fontSize: 20),
                            hintText: "Month",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)))),
                  ),
                  Container(
                    width: 80,
                    margin: EdgeInsets.fromLTRB(12.5, 15, 12.5, 7),
                    child: TextField(
                        controller: birthyear,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Colors.blue[50],
                            filled: true,
                            // Style: TextStyle(fontSize: 20),
                            hintText: "Year",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)))),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: MaterialButton(
                  height: 50,
                  minWidth: 70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8.0,
                  highlightColor: Colors.red[50],
                  child: Text("check your age", style: TextStyle(fontSize: 17)),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    pressed();
                  },
                  
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 30),
                 child: Container(
                  child: Text("YEAR : $calculatedyear  MONTHS : $calculatedmonth  DAYS : $calculateddate"),
              ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
