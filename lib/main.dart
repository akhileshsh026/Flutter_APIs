import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final WordWrap = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter Akhielsh',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter from Appbar title'),
        ),
        body: new Center(
         // child: new Text(WordWrap.asPascalCase),
         child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
   createState() => new RandomWordsState();
      
   }
   
   class RandomWordsState extends State<RandomWords> {
     
     final _suggesitions = <WordPair>[];
     final _biggerFont = const TextStyle(fontSize: 18.0);
           
           Widget _buildSuggesitons() {
             return new ListView.builder(
               padding: const EdgeInsets.all(16.0),

               itemBuilder: (context, i) {
                  if(i.isOdd) return new Divider();

                  final index = i ~/ 2 ;

                  if(index >= _suggesitions.length)
                  {
                    _suggesitions.addAll(generateWordPairs().take(10));
                  }
               },
             )
           }
}