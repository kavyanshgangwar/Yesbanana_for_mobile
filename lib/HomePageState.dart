import 'package:flutter/material.dart';
import 'package:mr_botton_navigation/Bibliothequepage.dart';
import 'package:mr_botton_navigation/Boursepage.dart';
import 'package:mr_botton_navigation/ColoniePage.dart';
import 'package:mr_botton_navigation/Homepage.dart';
import 'package:mr_botton_navigation/Educationpage.dart';
import 'package:mr_botton_navigation/main.dart';


class HomepageState extends State<Homepage> {
  int index = 0;
  final _appBar = [
    "Bibliothèques",
    "Bourses",
    "Colonies de vacances"
    ,
    "Educations",
  ];

  Widget getPages(int i, BuildContext context)
  {
    if(i==0)
      return new  Bibliothequepage(context);
    else if(i==1)
      return new Boursepage(context);
    else if(i==2)
      return new Coloniepage(context);
    else
      return new Educationpage(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(_appBar[index],
        ),
        centerTitle: true,
      ),
      body: getPages(index,context),
      bottomNavigationBar: MyBottomNavBar(
        index: index,
        callback: (newIndex) => setState(
              () => this.index = newIndex,
        ),
      ),
    );
  }
}
