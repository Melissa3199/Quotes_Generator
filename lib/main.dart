import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MaterialApp(
  home : QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  @override
    Random random = new Random();
    int i = 0;
    String q = 'hi' ; 
    List<String> quotes = [
      'Be yourself; everyone else is already taken.',
      'Two things are infinite: the universe and human stupidity; and Im not sure about the universe.',
      'You only live once, but if you do it right, once is enough.',
      'Be the change that you wish to see in the world.',
      'Always forgive your enemies; nothing annoys them so much',
    ];
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.redAccent ,
      appBar: AppBar(
        backgroundColor : Colors.white,
        title: Text(
          'Quotes Generator',
          style : TextStyle(
            color: Colors.redAccent,
            fontSize: 20.0,
            letterSpacing: 2.0,

          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add_comment,
          color:Colors.redAccent,
        ),
       onPressed : (){
          setState((){
            i = random.nextInt(4);
            q = quotes.elementAt(i);
          }
         );
        },

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            '$q',
            style: TextStyle(
              fontSize: 15.0,
              letterSpacing: 2.0,
              color : Colors.white,

            ),

          ),

        ),
      ),
      
    );
  }
}