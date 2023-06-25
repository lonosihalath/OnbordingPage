
 import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/onbording.dart';

final Map<String, WidgetBuilder> router ={
  '/':(BuildContext context)=> Onbording(),
  '/home':(BuildContext context)=> Home(),
};