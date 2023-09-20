import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  icon: Icon(Icons.fire_truck),
                ),
                Tab(
                  icon: Icon(Icons.bike_scooter),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.fire_truck),
              Icon(Icons.bike_scooter)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.black87),
                    child: Text("Drawer Header")),
                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Truck'),
                ),
                ListTile(
                  title: Text('Bike'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
