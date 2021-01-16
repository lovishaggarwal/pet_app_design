import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petappdesign/DogDetails/Chinky.dart';

import 'DogDetails/BoredPanda.dart';

enum Animal { dogs, cats, fish, snakes }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int index = 0;
  Animal animal = Animal.dogs;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: index);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.01,
        leading: Container(
          width: 25,
          height: 25,
          margin: EdgeInsets.all(16),
          child: SvgPicture.asset(
            'images/menu.svg',
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: ClipOval(
              child: Image.asset(
                'images/author1.jpg',
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff2c2c38),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.0,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        animal = Animal.dogs;
                      });
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: animal == Animal.dogs
                              ? Color(0xffff6363)
                              : Color(0xff3b3b47),
                          radius: 30,
                          child: SvgPicture.asset(
                            'images/dog.svg',
                            color: Colors.white,
                            width: 30,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Dogs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: animal == Animal.dogs
                                ? Color(0xffff6363)
                                : Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        animal = Animal.cats;
                      });
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: animal == Animal.cats
                              ? Color(0xffff6363)
                              : Color(0xff3b3b47),
                          radius: 30,
                          child: Image(
                            image: AssetImage('images/cat1.png'),
                            width: 28,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Cats',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: animal == Animal.cats
                                ? Color(0xffff6363)
                                : Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        animal = Animal.fish;
                      });
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: animal == Animal.fish
                              ? Color(0xffff6363)
                              : Color(0xff3b3b47),
                          radius: 30,
                          child: SvgPicture.asset(
                            'images/fish1.svg',
                            color: Colors.white,
                            width: 40,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Fishes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: animal == Animal.fish
                                ? Color(0xffff6363)
                                : Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        animal = Animal.snakes;
                      });
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: animal == Animal.snakes
                              ? Color(0xffff6363)
                              : Color(0xff3b3b47),
                          radius: 30,
                          child: Image(
                            image: AssetImage('images/snake.png'),
                            width: 35,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Snakes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: animal == Animal.snakes
                                ? Color(0xffff6363)
                                : Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: DropdownButton(
                iconEnabledColor: Colors.white,
                dropdownColor: Colors.transparent,
                underline: Container(color: Colors.transparent),
                iconSize: 30,
                elevation: 0,
                items: [
                  DropdownMenuItem(
                    value: "1",
                    child: Text(
                      "First",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                onChanged: (value) {
//                          print("value: $value");
                },
                hint: Text(
                  "Recommended",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    letterSpacing: 0.9,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Flexible(
              child: GridView.count(
                crossAxisSpacing: 13,
                mainAxisSpacing: 13,
                crossAxisCount: 2,
                childAspectRatio: 7 / 9,
                children: [
                  AnimalTIle(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BoredPanda();
                      }));
                    },
                    tag: 'boredPanda',
                    color: Color(0xffff6363),
                    image: 'images/boredPanda.png',
                    petName: 'Bored Panda',
                    genderIcon: FontAwesomeIcons.venus,
                    age: '6 Months',
                    gender: 'Female',
                  ),
                  AnimalTIle(
                    onTap: null,
                    tag: 'chinky',
                    color: Colors.teal,
                    image: 'images/chinky.png',
                    petName: 'Chinky',
                    genderIcon: FontAwesomeIcons.venus,
                    age: '8 Months',
                    gender: 'Female',
                  ),
                  AnimalTIle(
                    onTap: null,
                    tag: 'ruderr',
                    color: Color(0xffffd361),
                    image: 'images/ruderr.png',
                    petName: 'Ruderr Jr.',
                    genderIcon: FontAwesomeIcons.mars,
                    age: '2 Years',
                    gender: 'Male',
                  ),
                  AnimalTIle(
                    onTap: null,
                    tag: 'softee',
                    color: Color(0xffff6363),
                    image: 'images/softee.png',
                    petName: 'Softee',
                    genderIcon: FontAwesomeIcons.venus,
                    age: '6 Months',
                    gender: 'Female',
                  ),
                ],
              ),
            )
//            Flexible(
////              constraints: BoxConstraints(maxHeight: 70.0),
//              child: TabBarView(
//                controller: _tabController,
//                children: <Widget>[
//                  Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//
//                    ],
//                  ),
//                ],
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}

class AnimalTIle extends StatelessWidget {
  const AnimalTIle({
    @required this.color,
    @required this.image,
    @required this.petName,
    @required this.genderIcon,
    @required this.age,
    @required this.gender,
    @required this.tag,
    @required this.onTap,
  });
  final Color color;
  final String image, petName, age, gender, tag;
  final IconData genderIcon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 6,
              child: Hero(
                tag: tag,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  petName,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.white,
                        size: 11,
                      ),
                    ),
                    Text(
                      age,
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        genderIcon,
                        color: Colors.white,
                        size: 11,
                      ),
                    ),
                    Text(
                      gender,
                      style: TextStyle(color: Colors.white, fontSize: 11),
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
