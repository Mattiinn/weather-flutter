import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/li1.jpg'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Find"),
                    ),
                    Expanded(
                      child: TextField(
                        controller: textEditingController,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Mountain view',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Clear Sky',
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Icon(Icons.wb_sunny_outlined,
                      color: Colors.white, size: 80),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("14" + "\u00b0",
                      style: TextStyle(color: Colors.white, fontSize: 60)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Max",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "16" + "\u00b0",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Min",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              "12" + "\u00b0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    color: Colors.grey,
                    height: 1,
                    width: double.infinity,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int pos) {
                            return Container(
                              height: 50,
                              width: 50,
                              child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Fri,8pm",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      Icon(
                                        Icons.cloud,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "14" + "\u00b0",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  color: Colors.transparent),
                            );
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    color: Colors.grey,
                    height: 1,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Wind Speed",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "4.73 m/s",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 1,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              "Sunrise",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "6:19AM",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 1,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              "Sunset",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "9:30PM",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 1,
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              "Humidity",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "72%",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
