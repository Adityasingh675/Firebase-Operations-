import 'package:flutter/cupertino.dart';

class Entry{
  final String entryId;
  final String date;
  final String entry;

  Entry({this.date,this.entry,@required this.entryId});


  // Method to convert the received json data in map format to the dart object format.
  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
      date: json['date'],
      entryId: json['entryId'],
      entry: json['entry'],
    );
  }

  // Method to map the dart object to json data to store in cloud firestore.
  Map<String, dynamic> toMap() {
    return {
      'date' : date,
      'entryId' : entryId,
      'entry' : entry
    };
  }
}