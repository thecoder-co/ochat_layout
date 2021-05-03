import 'package:flutter/material.dart';
import 'package:ochat_test/message.dart';

import 'package:ochat_test/custom_icons_icons.dart';
import 'package:ochat_test/tasks.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _title = 'Home';
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions() => <Widget>[
        OptionMessage(),
        OptionTasks(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // here the desired height

        child: AppBar(
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    CustomIcons.ochat,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50),
          ),
          backgroundColor: Color.fromARGB(255, 69, 17, 69),
          centerTitle: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.zero,
              topRight: Radius.zero,
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
        ),
      ),

      /*bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Icon(Icons.ac_unit)],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),*/
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.auto_awesome_mosaic),
        onPressed: null,
        backgroundColor: Color.fromARGB(255, 69, 17, 69),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _widgetOptions().elementAt(_selectedIndex),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: BottomAppBar(
          notchMargin: 7,
          shape: CircularNotchedRectangle(),
          color: Color.fromARGB(255, 69, 17, 69),
          child: Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.toll_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpeg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OptionHome extends StatelessWidget {
  const _OptionHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class _OptionAvatar extends StatelessWidget {
  const _OptionAvatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
