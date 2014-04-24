import 'dart:html';
import 'dart:async';

void main() => tick();

void tick() {
  DateTime now = new DateTime.now();

  querySelector("#time").text = year(now) + "." + dayOfTheYear(now) + "." + decimalTime(now);

  new Timer(const Duration(milliseconds:100), tick);
}

String year(DateTime now) {
  return now.year.toString();
}

String dayOfTheYear(DateTime now) {
  return ((now.difference(new DateTime(now.year)).inDays) + 1).toString();
}

String decimalTime(DateTime now) {
  return ((new DateTime.now().difference(
          new DateTime(now.year, now.month, now.day, 0, 0, 0, 0))).inSeconds / 86.4).truncate().toString();
}