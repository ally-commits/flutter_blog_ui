import 'package:flutter/material.dart';
import 'package:blogone/models/author_model.dart';

class FavAuthors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: authors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage(authors[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}