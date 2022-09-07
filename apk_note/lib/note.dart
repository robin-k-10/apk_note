import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    List dateList = ["17-08-2022", "18-08-2022"];
    List noteList = [
      ['noteA', 'noteB'],
      ['noteA']
    ];
    return ListView.builder(
        itemCount: dateList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 50, 4, 52)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          dateList[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      for (var i in noteList[index])
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(i.toString(),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
