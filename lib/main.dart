import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: Quotes()));
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'Jhoey Shot', text: 'Never Give Up'),
    Quote(author: 'Mr. Nyanzu', text: 'Long Live Mama'),
    Quote(author: 'Mr. Joe', text: 'Giving Up Is Not An Option'),
    Quote(author: 'Mr. Buah', text: 'With God All Things Are Possible'),
    Quote(author: 'Madam Lizzy', text: 'I will make it in Life One day'),
    Quote(author: 'Abraham', text: 'Cheating Is Never A Mistake'),
    Quote(author: 'Almighty', text: 'Jesus is the Only way to Eternal Life'),
    Quote(author: 'Madam Saviour',text: 'Lovig is hard, It does not work as Expexted')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Awesome Quotes", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent[200],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes
                .map(
                  (quote) => QuoteCard(
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    },
                    quote: quote,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
