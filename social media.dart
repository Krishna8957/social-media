import 'package:flutter/material.dart';
import 'package:social_media/bookmark.dart';
import 'package:social_media/interests.dart';
import 'package:social_media/homepage.dart';
import 'package:social_media/nullam.dart';
import 'package:social_media/papular.dart';
import 'package:social_media/see_all.dart';
import 'package:social_media/setting.dart';

void main() {
  runApp(MaterialApp(
    
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.grey,
      brightness: Brightness.dark,
     

    ),
    home: MyInterests(),
  initialRoute: "main",
      routes: {
        "interests":(context) => MyInterests(),
        "setting":(context) => MySettings(),
        "main":(context) => MyApp(),
        "bookmark":(context) => MyBookmark(),
        "homepage":(context) => MyHomePage(),
        "papular":(context) => MyPapular(),
        "nullam":(context) => MyNullam(),
        "see_all":(context) => MySeeAll(),
      },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
int _intselected =0;
 var _pagesData = [
  MyHomePage(), MyInterests(), MyBookmark(),MySettings()
 ];
class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: _pagesData[ _intselected],
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: _intselected,
        onTap: (value) {
          setState(() {
            _intselected =value;
          });
        } ,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[800],
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black12,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.interests),label:"interests" ),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label:"Bookmark" ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:"Settings" )
        ]),
    );
  }
}


