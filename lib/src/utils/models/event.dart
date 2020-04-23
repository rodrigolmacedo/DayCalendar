import 'dart:convert';

import 'package:flutter/material.dart';

class Event {
  final DateTime initialDate;
  final DateTime finalDate;
  final Color color;
  final String title;
  final int id;
  final Color borderColor;
  final TextStyle eventTitleStyle;

  Event({
    this.initialDate,
    this.finalDate,
    this.color,
    this.title,
    this.id,
    this.borderColor,
    this.eventTitleStyle,
  });

  factory Event.fromJson(String str) => Event.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Event.fromMap(Map<String, dynamic> json) => Event(
      initialDate: json["initialDate"] == null ? null : json["initialDate"],
      finalDate: json["finalDate"] == null ? null : json["finalDate"],
      color: json["color"] == null ? null : json["color"],
      title: json["title"] == null ? null : json["title"],
      id: json["id"] == null ? null : json["id"],
      borderColor: json["borderColor"] == null ? null : json["borderColor"],
      eventTitleStyle: json["eventTitleStyle"] == null
          ? TextStyle(color: Colors.white)
          : json['eventTitleStyle']);

  Map<String, dynamic> toMap() => {
        "initialDate": initialDate == null ? null : initialDate,
        "finalDate": finalDate == null ? null : finalDate,
        "color": color == null ? null : color,
        "title": title == null ? null : title,
        "id": id == null ? null : id,
        "borderColor": borderColor == null ? null : borderColor,
        "eventTitleStyle": eventTitleStyle == null
            ? TextStyle(color: Colors.white)
            : eventTitleStyle,
      };
}