import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  void increment() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("Dibujando widgets");
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Contador"),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10.0),
          Icon(Icons.notifications),
          SizedBox(width: 10.0),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/bf/ce/d4/bfced4d2d5bff1db8c36b046f21b951e.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: increment,
        onPressed: () {
          increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
