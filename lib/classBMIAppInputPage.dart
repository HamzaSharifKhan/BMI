import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:task_1/classBMIAppInputPage.dart';
import 'package:flutter_application_1/enum.dart';
import 'package:flutter_application_1/resultPage.dart';

class BMIAppInputPage extends StatefulWidget {
  const BMIAppInputPage({Key? key}) : super(key: key);

  @override
  _BMIAppInputPageState createState() => _BMIAppInputPageState();
}

class _BMIAppInputPageState extends State<BMIAppInputPage> {
  // late int selectedContainer;
  gender? selectedContainer;
  int sliderValue = 0;
  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedContainer = gender.male;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedContainer == gender.male
                              ? Colors.blueAccent
                              : Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedContainer = gender.female;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedContainer == gender.female
                              ? Colors.blueAccent
                              : Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Second Row

            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Height',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                sliderValue.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 60,
                                    ),
                              ),
                            ],
                          ),
                          Slider(
                              value: sliderValue.toDouble(),
                              min: 0,
                              max: 300,
                              inactiveColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  sliderValue = value.toInt();
                                });
                              }),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Third Row

            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: CircleAvatar(
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: CircleAvatar(
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: CircleAvatar(
                                  child: Icon(FontAwesomeIcons.minus),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: CircleAvatar(
                                  child: Icon(FontAwesomeIcons.plus),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Calculate Button

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => resultPage()),
                );
              },
              child: Container(
                height: 80,
                width: double.infinity,
                // color: Colors.blue,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
