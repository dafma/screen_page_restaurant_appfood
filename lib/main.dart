import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  custom() {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 200.0,
        floating: false,
        pinned: false,
        flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "Rancho Seco",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            background: Image.asset(
              "assets/ranchoseco.jpg",
              fit: BoxFit.cover,
            )),
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                title: Text(" List Item"),
              ))),
    ]);
  }

  nested() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Collapsing Toolbar",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  background: Image.asset(
                    "assets/ranchoseco.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            SliverList(
                delegate:
                    SliverChildBuilderDelegate((context, index) => ListTile(
                          title: Text(" List Item"),
                        ))),
          ];
        },
        body: Center(
          child: Text("The Parrot"),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: custom(),
    );
  }
}
