import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoredPanda extends StatefulWidget {
  @override
  _BoredPandaState createState() => _BoredPandaState();
}

class _BoredPandaState extends State<BoredPanda> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff2c2c38),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Hero(
                tag: 'boredPanda',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/boredPanda.png'),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Breed - Pomerian',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Bored Panda',
                        style: TextStyle(
                            color: Color(0xffff6363),
                            fontSize: 50,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'She is a clever dog who loves to eat icecream and sleeps most of the time keeping all her energy safe.',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          letterSpacing: 0.6),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: DropdownButton(
                        iconEnabledColor: Colors.white,
                        dropdownColor: Colors.transparent,
                        underline: Container(color: Colors.transparent),
                        iconSize: 30,
                        elevation: 0,
                        items: [
//                          DropdownMenuItem(
//                            value: "1",
//                            child: Text(
//                              "First",
//                              style: TextStyle(color: Colors.white),
//                            ),
//                          ),
                        ],
                        onChanged: (value) {
//                          print("value: $value");
                        },
                        hint: Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            letterSpacing: 0.9,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxHeight: 60, minWidth: size.width),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 5,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '6 Months',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.venus,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'images/weight.svg',
                                color: Colors.white,
                                width: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '3.6 Kg',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'images/height.svg',
                                color: Colors.white,
                                width: 18,
                              ),
                              SizedBox(width: 3),
                              Text(
                                '2 Feet 1 Inch',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xffff6363),
                        ),
                        height: 45,
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.white,
                              size: 26,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Adopt',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
