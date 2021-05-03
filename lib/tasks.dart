import 'package:flutter/material.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:dotted_line/dotted_line.dart';

class OptionTasks extends StatelessWidget {
  const OptionTasks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 123.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ConfigurableExpansionTile(
                    expandedBackgroundColor: Colors.white,
                    headerBackgroundColorStart: Color.fromARGB(255, 69, 17, 69),
                    header: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '6 Completed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 10,
                                  ),
                                  child: SizedBox(
                                    width: 200,
                                    child: DottedLine(
                                      dashColor: Colors.white,
                                      dashGapLength: 0,
                                      lineThickness: 3,
                                      dashLength: 200,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down_rounded),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    headerExpanded: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '6 Completed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 10,
                                  ),
                                  child: SizedBox(
                                    width: 200,
                                    child: DottedLine(
                                      dashColor: Colors.white,
                                      dashGapLength: 0,
                                      lineThickness: 3,
                                      dashLength: 200,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_drop_up_rounded),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Buy Shares',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Audit Finance',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'See The Executive Director',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Redo the account files',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Delete confidential information',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Lunch Break',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.85,
                                decorationColor: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ConfigurableExpansionTile(
                    expandedBackgroundColor: Colors.white,
                    headerBackgroundColorStart: Color.fromARGB(255, 69, 17, 69),
                    header: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '3 Pending',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    right: 10,
                                  ),
                                  child: SizedBox(
                                    width: 200,
                                    child: DottedLine(
                                      dashColor: Colors.white,
                                      dashGapLength: 0,
                                      lineThickness: 3,
                                      dashLength: 200,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down_rounded),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    headerExpanded: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '3 Pending',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 10,
                                    ),
                                    child: SizedBox(
                                      width: 200,
                                      child: DottedLine(
                                        dashColor: Colors.white,
                                        dashGapLength: 0,
                                        lineThickness: 3,
                                        dashLength: 200,
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_up_rounded),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Visit Headquarters',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Visit Human Resources',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(
                              'Print out audit form',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
