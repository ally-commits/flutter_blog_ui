import 'package:blogone/widgets/blog_posts.dart';
import 'package:blogone/widgets/fav_authors.dart';
import 'package:blogone/widgets/recent_posts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[ 
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sra Blog",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.menu,
                        size: 32.0,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ), 
            ),
            Column(
              children: <Widget>[
                FavAuthors(), 
                BlogPosts(), 
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recent Posts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16.0
                          ),
                        )
                      ],
                    ),
                  ),
                ), 
                RecentPosts()
              ],
            ) 
          ],
        ),
      ),
    );
  }
}