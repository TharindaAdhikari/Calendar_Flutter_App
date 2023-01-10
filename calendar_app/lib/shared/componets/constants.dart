import 'package:flutter/material.dart';

final String eventTable = "events";
String? devicetoken = "";
String API_FCM_KEY =
    "AAAAzOQUmXs:APA91bH_-4wN-NQ6vrootxn4u6ZlySVuU3N0qNZRJK6ejBR3Sv9qiYJuTmRDkXlRjvp6kGJ2jXaYEJKEJFN-js2KxBmlog2JFfg3Ae8xrCjjrrLzSCmC4dzErzgCr-Y9JuP1VnkyBkko";

//NOTE ----------Get Date Formated For Task -----------------------------
String getDateFormated(String date) {
  List<String> listdate = date.split("T");
  List<String> list1date = listdate[1].split(":");

  return list1date[0] + ":" + list1date[1] + "   " + listdate[0];
}
