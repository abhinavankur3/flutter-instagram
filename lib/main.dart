import 'package:flutter/material.dart';
import "pages/home.dart";
import 'pages/createPost.dart';
import 'pages/notification.dart';
import 'pages/profile.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CreatePostPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Instagram"),
        ),
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 2),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.add),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
