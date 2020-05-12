import 'package:bipolar_factory/utils/colors.dart';
import 'package:bipolar_factory/utils/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  static String id = "mainScreen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          kTitleText,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: AccentColor,
              child: TabBar(
                controller: _tabController,
                labelColor: blacKColor,
                unselectedLabelColor: AccentColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white),
                tabs: <Widget>[
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
