import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class OptionMessage extends StatelessWidget {
  OptionMessage({Key key}) : super(key: key);
  final List<String> _names = [
    'Helen',
    'Daniella',
    'Angelina',
    'Vivian',
    'Mary',
    'Susan',
    'Mark',
    'Joanne',
    'Alexa',
    'Phoebe',
    'Chadwick',
    'Racheal',
  ];

  List _images = [
    
    'assets/man1.jpeg',
    'assets/man2.jpeg',
    'assets/man3.jpeg',
    'assets/man3.jpeg',
    'assets/man4.jpeg',
    'assets/man5.jpeg',
    'assets/man6.jpeg',
    'assets/woman1.jpeg',
    'assets/woman2.jpeg',
    'assets/woman3.jpeg',
    'assets/woman4.jpeg',
    'assets/woman5.jpeg',
    'assets/woman6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 260,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        GroupButton(
                          buttonWidth: 75,
                          buttonHeight: 20,
                          selectedTextStyle: TextStyle(fontSize: 8),
                          unselectedTextStyle: TextStyle(
                            fontSize: 8,
                            color: Color.fromARGB(255, 69, 17, 69),
                          ),
                          unselectedColor: Colors.white,
                          unselectedBorderColor:
                              Color.fromARGB(255, 69, 17, 69),
                          selectedColor: Color.fromARGB(255, 69, 17, 69),
                          isRadio: true,
                          spacing: 5,
                          onSelected: (index, isSelected) =>
                              print('$index button is selected'),
                          buttons: [
                            "ALL",
                            "ACCOUNT",
                            "IT",
                            "AUDIT",
                            "RISK",
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:
                              List.generate(_names.length - 6, (int index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(_images[index]),
                                  backgroundColor:
                                      Color.fromARGB(255, 69, 17, 69),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  _names[index],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            );
                          }),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:
                              List.generate(_names.length - 6, (int index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(_images[index+6]),
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 69, 17, 69),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  _names[index + 6],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                              ],
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 1170,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: _names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: 80,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 3.0,
                                    top: 3,
                                    right: 3,
                                    bottom: 3,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.asset(
                                            _images[index],
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      height: 76,
                                      width: 74,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 65,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _names[index],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consetetur',
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        'sadipscing elitr, sed diam nonumy eirmod tempor',
                                        overflow: TextOverflow.visible,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '•',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "12:30pm",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            color: Color.fromARGB(255, 69, 17, 69),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
