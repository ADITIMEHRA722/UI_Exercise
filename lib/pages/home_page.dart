import 'package:flutter/material.dart';
import 'package:ui1/pages/utils/emoticon_faces.dart';
import 'package:ui1/pages/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''), 
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '' ), 
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: Column(
                
                children: [
                  
                   // Greetings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // hi aditi

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hii, Aditi !",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "23 Jan, 2023",
                          style:
                              TextStyle(color: Colors.blue[100], fontSize: 15),
                        )
                      ],
                    ),

                    //Notificcation

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
                  height: 20,
                ),
                // Search bar

                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Search", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // how do you feel ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " How do you feel ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                // for different facesq 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Column(
                  children: [
                     // bad 
                  EmoticonFace(
                    emoticonFace:"😔",
                  ),
                  SizedBox(height: 8,),
                  Text("Bad" ,  style: TextStyle(color: Colors.white),),
                  
                     ],
                  ),

                  Column(
                  children: [
                     // fine 
                  EmoticonFace(emoticonFace:"😀"),
                  SizedBox(height: 8,),
                  Text("Fine" , style: TextStyle(color: Colors.white),),
                  
                     ],
                  ), 

                  Column(
                  children: [
                     // low 
                    EmoticonFace(emoticonFace:"🙁"),
                  SizedBox(height: 8,),
                  Text("Low",  style: TextStyle(color: Colors.white),),
                  
                     ],
                  ), 

                   Column(
                  children: [
                      // excellent
                  EmoticonFace(emoticonFace:"🤩"),
                  SizedBox(height: 8,),
                  Text("Excellent" ,  style: TextStyle(color: Colors.white),),
                  
                     ],
                  ), 
                 ],), 

                ],
               ),
             ),
             SizedBox(height: 25,),

               Expanded(
                
                 child: Container(
                  
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[300],
                  
                  child: Center(
                    child: Column(children: [

                        
                      /// Exercise Heading 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      SizedBox(height: 20,), 

                      // ListView odf this exercise 
                      Expanded(
                        child: ListView(children: [
                          ExerciseTile(icon: Icons.favorite, exerciseName: "Speaking Skill", numberOfExercise: 13, color: Colors.red),

                          ExerciseTile(icon: Icons.person, exerciseName: "Reading Skill", numberOfExercise: 14, color: Colors.orange),

                          ExerciseTile(icon: Icons.star, exerciseName: "writting Skill", numberOfExercise: 8, color: Colors.blue),
                        ],),
                      )
                    ],),
                  ),
                 
                 ),
               )
            ],
          ),
        ));
  }
}

                  
                  
                 