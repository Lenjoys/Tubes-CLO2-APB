import 'package:flutter/material.dart';
import 'add_mood.dart';
import 'mood_tracker.dart';
import 'countdown_timer.dart';
import 'energi.dart';
import 'mood_chart.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => DefaultTabController(
              length: 5,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Mood Tracker'),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(48),
                    child: Container(
                      alignment: Alignment.center,
                      child: TabBar(
                        isScrollable: true,
                        tabs: [
                          Tab(
                            text: 'Catatan',
                          ),
                          Tab(
                            text: 'Mood Jurnal',
                          ),
                          Tab(
                            text: 'Mood Booster',
                          ),
                          Tab(
                            text: 'Mood Energy',
                          ),
                          Tab(
                            text: 'Recap Mood',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    MoodTracker(),
                    AddMood(),
                    Countdown(),
                    MySliderApp(),
                    MoodCharts(),
                  ],
                ),
              ),
            ),
      },
    );
  }
}
