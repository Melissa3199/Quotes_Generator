import 'package:flutter/material.dart';
import 'dart:math';
import 'quote.dart';
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
    Quote q = new Quote() ; 
    List<Quote> quotes = [
      Quote(text: 'Be yourself; everyone else is already taken.', author :'Oscar Wilde'),
      Quote(text: 'Two things are infinite: the universe and human stupidity; and Im not sure about the universe.',author :'Albert Einstein'),
      Quote(text: 'You only live once, but if you do it right, once is enough.',author :'Mae West') , 
      Quote(text: 'Be the change that you wish to see in the world.', author : 'Mahatma Gandhi'),
      Quote(text: 'Always forgive your enemies; nothing annoys them so much', author : 'Oscar Wilde'),
    ];

  Widget quoteTemplate(quote){
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 0.0),
        child : Column(
          children: <Widget>[
            Text(
              q.text, 
              style : TextStyle(
                fontSize : 15.0,
                letterSpacing : 2.0,
                color : Colors.redAccent,
              )
            ),
            SizedBox(
              height : 6.0,
            ), 
            Text(
              q.author, 
              style : TextStyle(
                fontSize : 12.0,
                letterSpacing : 2.0,
                color : Colors.redAccent,
              )
            ),
          ],

        ),
      );
  }
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
   
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children : <Widget>[
           quoteTemplate(q),
           FloatingActionButton(
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
          

          ],
        ),
      ),
      
    );
  }
}