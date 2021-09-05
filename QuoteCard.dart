import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final delete;
  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 5,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 5,),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}