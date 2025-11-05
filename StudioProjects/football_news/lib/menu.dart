import 'package:flutter/material.dart';
import 'package:football_news/widgets/left_drawer.dart';
import 'package:football_news/widgets/news_card.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Zahran Musyaffa";
  final String npm = "2406365401";
  final String kelas = "KKI";

  final List<ItemHomepage> items = [
    ItemHomepage("See Football News", Icons.newspaper),
    ItemHomepage("Add News", Icons.add, ),
    ItemHomepage("Logout", Icons.logout),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Football News App", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: nama),
                  InfoCard(title: 'Class', content: kelas),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Welcome to Football News',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              GridView.count(
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                shrinkWrap: true,
                children: items.map((ItemHomepage item) {
                  return ItemCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      )
    );
  }

}

class InfoCard extends StatelessWidget {

  final String title;
  final String content;
  
  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation : 2,
      child : Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title,style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(content),
          ]

        )
      )
      
    );
  }
}

class ItemHomepage {
 final String name;
 final IconData icon;

 ItemHomepage(this.name, this.icon);
}

