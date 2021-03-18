import 'package:flutter/material.dart';
import 'package:flutter_blog_app/views/home.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(new MaterialApp(
    home: new BlogApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class BlogApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(), //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
