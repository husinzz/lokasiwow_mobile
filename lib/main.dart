import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomCardType {
  String title;
  String imageURL;
  String locationURL;
  String paragraph;

  CustomCardType(this.title, this.imageURL, this.locationURL, this.paragraph);
}

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _WidgetOptions = <Widget>[
    MainScreen(),
    // LocationList(),
    // CategoryList(),
    // BlogList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        child: _WidgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blog',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    ));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("LokasiWow - Home"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
                child: Column(
              children: List.generate(
                  8,
                  (index) => CustomCard(
                          card: CustomCardType(
                        "$index",
                        "assets/placeholder.png",
                        "hi",
                        "hi",
                      ))),
            )),
          ],
        )));
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nama Tempat"),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
          children: [
            Image.asset("assets/city1.png"),
          ],
        ));
  }
}

// class LocationList extends StatelessWidget {
//   const LocationList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//         appBar: AppBar(
//           title: Text("LokasiWow - Locations"),
//           centerTitle: true,
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//                 child: Column(
//               children: List.generate(8, (index) => CustomCard(
//                 CustomCardType(
//                   title: index.toString(),
//                   imageURL: "assets/placeholder.png",
//                   locationURL: "Location",
//                   paragraph: "Lorem Ipsum dolor smith aresto minatour gamino restaumi kostrinka ngisang sldkfaleidf aldjeiod sksdjsdokoj",

//                 )
//               )),
//             )),
//           ],
//         )));
//   }
// }

// class CategoryList extends StatelessWidget {
//   const CategoryList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//         appBar: AppBar(
//           title: Text("LokasiWow - Category"),
//           centerTitle: true,
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//                 child: Column(
//               children: List.generate(8, (index) => CustomCard(
//                 CustomCardType(
//                   title: index.toString(),
//                   imageURL: "assets/placeholder.png",
//                   locationURL: "Location",
//                   paragraph: "Lorem Ipsum dolor smith aresto minatour gamino restaumi kostrinka ngisang sldkfaleidf aldjeiod sksdjsdokoj",

//                 )
//               )),
//             )),
//           ],
//         )));
//   }
// }

// class BlogList extends StatelessWidget {
//   const BlogList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return (Scaffold(
//         appBar: AppBar(
//           title: Text("LokasiWow - Blog"),
//           centerTitle: true,
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//                 child: Column(
//               children: List.generate(8, (index) => CustomCard(
//                 CustomCardType(
//                   title: index.toString(),
//                   imageURL: "assets/placeholder.png",
//                   locationURL: "Location",
//                   paragraph: "Lorem Ipsum dolor smith aresto minatour gamino restaumi kostrinka ngisang sldkfaleidf aldjeiod sksdjsdokoj",

//                 )
//               )),
//             )),
//           ],
//         )));
//   }
// }

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.card});
  final CustomCardType card;

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: 300,
      child: Card(
        child: Column(
          children: [
            Image.asset(card.imageURL),
            ListTile(
              title: Text(card.title),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()))
                        },
                    child: Text("Pelajari Lebih lanjut")),
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen()))
                        },
                    child: Text("Peta"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
