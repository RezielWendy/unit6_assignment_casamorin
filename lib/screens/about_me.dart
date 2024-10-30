import 'package:flutter/material.dart';
import 'package:unit6_assignment_casamorin/components/tab_widget_1.dart';
import 'package:unit6_assignment_casamorin/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(tabs: [
                Tab(icon: Icon(Icons.contacts)),
                Tab(icon: Icon(Icons.settings)),
              ]),
              Expanded(
                child: TabBarView(children: [
                  TabWidget1(),
                  TabWidget2(),
                ]),
              )
            ],
          )),
    );
  }
}
