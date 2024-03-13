import 'package:flutter/material.dart';

void main() {
  runApp(CounterPoints());
}

class CounterPoints extends StatefulWidget {
  @override
  _CounterPointsState createState() => _CounterPointsState();
}

class _CounterPointsState extends State<CounterPoints> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 1;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 58,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
