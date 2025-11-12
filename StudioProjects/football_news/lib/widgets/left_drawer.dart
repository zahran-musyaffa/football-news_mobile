import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Text(
                  'Football News',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text('All the latest football updates here'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add News'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/news-form');
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('List Tile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('News List'),
            onTap: () {
              Navigator.pushNamed(context, '/news-list');
            },
          ),
        ],
      ),
    );
  }
}
