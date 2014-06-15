import 'dart:async';
import 'dart:convert';
import 'dart:html';

class TechnologiesBundle {

  static List technos;

  TechnologiesBundle() {

  }

  Future loadData() {
    var path = '/data/technologies.json';
    return HttpRequest.getString(path).then(_parseJSON);
  }

  void _parseJSON(String jsonString) {
    technos = JSON.decode(jsonString);
  }

  List getTechnos() {
    return technos;
  }
}
