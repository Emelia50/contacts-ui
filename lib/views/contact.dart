import 'package:flutter/material.dart';


class Contact {
  String name = "";
  String number = "";
  String id = "";
  String email = "";
  String profileImage = "";

Contact(
  { this.name= "",
  required this.number,
  this.email="",
  required this.id,
  }
);
}