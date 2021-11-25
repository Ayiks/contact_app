import 'package:contact_application/contact_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> data = [
    {
      "name": "Regan Kwame",
      "phone": "+233 254 506 258",
      "email": "someone@example.com",
      "country": "Ghana",
      "region": "Koforidua"
    },
    {
      "name": "Attah Adwoa",
      "phone": "+233 250 506 208",
      "email": "adwoaattah@gmail.com",
      "country": "Ghana",
      "region": "Kumasi"
    },
    {
      "name": "Abdul Ayew",
      "phone": "+233 254 506 258",
      "email": "abdul@gmail.com",
      "country": "Ghana",
      "region": "Nima"
    },
    {
      "name": "John Doe",
      "phone": "+441 254 325 258",
      "email": "someone@example.com",
      "country": "Togo",
      "region": "Lome"
    },
    {
      "name": "Waslaw",
      "phone": "+550 778 506 2589",
      "email": "1213@yahoo.com",
      "country": "China",
      "region": "Beijin"
    }
  ];

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
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ContactView();
                    }));
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/pic.jpeg'),
                  ),
                  title: Text(
                    'Bright Software',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  subtitle: Text('+233 54 025 5889'),
                  trailing: Icon(
                    Icons.more_horiz,
                    size: 30,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'A',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/pic.jpeg'),
                    ),
                    title: Text(
                      'Bright Software',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    subtitle: Text('+233 54 025 5889'),
                    trailing: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                itemCount: 2)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
        backgroundColor: Colors.black,
      ),
    );
  }
}
