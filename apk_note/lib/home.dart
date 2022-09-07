import 'package:apk_note/calendar.dart';
import 'package:apk_note/note.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[700],
            centerTitle: true,
            title: Text(
              'NOTE X',
              style: GoogleFonts.aladin(
                color: Color.fromARGB(255, 43, 0, 38),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.calendar_month),
                  child: Text('Calendar'),
                ),
                Tab(
                  icon: Icon(Icons.note_add),
                  child: Text('Note'),
                )
              ],
              indicatorColor: Color.fromARGB(255, 35, 60, 8),
            ),
            actions: <Widget>[
              IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  icon: Icon(Icons.logout),
                  onPressed: () {}),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Calendar(),
                ),
              ),
              Container(
                child: Center(
                  child: NotePage(),
                ),
              ),
            ],
          )),
    );
  }
}
