import 'package:dribbles/util/emoticon_face.dart';
import 'package:dribbles/util/exercise_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dribble',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Hi Asua",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text("24 April,2023",
                              style: TextStyle(color: Colors.blue[200])),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.white),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    children: [
                      //bad
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '😏'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //fine
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '☺'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //well
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '😊'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //excellent
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '🤭'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //excited
                      Column(
                        children: const [
                          EmoticonFace(emoticonFace: '🤗'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Excited',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0,),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0))),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20,),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Listview of exercises
                      Expanded(
                          child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icon(Icons.favorite, color: Colors.white),
                            numberOfExercises: "2 exercises",
                            exerciseName: "Speaking skills",
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                              icon: Icon(Icons.person, color: Colors.white),
                              numberOfExercises: "8 exercises",
                              exerciseName: "Reading speed",
                              color: Colors.green),
                          ExerciseTile(
                              icon: Icon(Icons.health_and_safety,
                                  color: Colors.white),
                              numberOfExercises: "6 running circles",
                              exerciseName: "Running speed",
                              color: Colors.red)
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
