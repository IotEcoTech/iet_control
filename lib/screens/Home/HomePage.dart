import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar.large(
          leading: Center(
            child: Text(
              "32°C",
              style: TextStyle(fontSize: 22),
            ),
          ),
          title: const Text('Large App Bar'),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.add_circle), onPressed: () {}),
          ],
          expandedHeight: 250,
          backgroundColor: Colors.green,
        ),

        // Just some content big enough to have something to scroll.
        SliverToBoxAdapter(
          child: Column(
            children: [
              Text(
                '1',
                style: TextStyle(fontSize: 20),
              ),
              Text('2'),
              Text('3'),
            ],
          ),
        ),
      ],
    );
  }
}
