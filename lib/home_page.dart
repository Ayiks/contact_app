import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'My Contact',
          style: TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/pic.jpeg'),
              radius: 25,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search by name or number',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/pic.jpeg'),
              ),
              title: Text('Bright Software'),
              subtitle: Text('+233 54 025 5889'),
              trailing: Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }
}
