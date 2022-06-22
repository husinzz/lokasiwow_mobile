import 'package:flutter/material.dart';
import 'package:lokasiwow_mobile/widgets/city_card.dart';
import 'package:lokasiwow_mobile/models/city.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              child: Container(
                height: 150,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(id: 3, imageUrl: 'assets/city3.png', name: 'Space'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 4,
                        name: 'Palembang',
                        imageUrl: 'assets/city4.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 5,
                        name: 'Aceh',
                        imageUrl: 'assets/city5.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 6,
                        name: 'Bogor',
                        imageUrl: 'assets/city6.png',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Column(
              children: List.generate(
                  8,
                  (index) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/placeholder.png'),
                            ListTile(
                              title: Text('Card title $index'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen()))
                                    },
                                child: Text("Pelajari Lebih lanjut"))
                          ],
                        ),
                      )),
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

class LocationList extends StatelessWidget {
  const LocationList({Key? key}) : super(key: key);

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
                  (index) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/placeholder.png'),
                            ListTile(
                              title: Text('Card title $index'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen()))
                                    },
                                child: Text("Pelajari Lebih lanjut"))
                          ],
                        ),
                      )),
            )),
          ],
        )));
  }
}

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

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
                  (index) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/placeholder.png'),
                            ListTile(
                              title: Text('Card title $index'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen()))
                                    },
                                child: Text("Pelajari Lebih lanjut"))
                          ],
                        ),
                      )),
            )),
          ],
        )));
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

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
                  (index) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/placeholder.png'),
                            ListTile(
                              title: Text('Card title $index'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen()))
                                    },
                                child: Text("Pelajari Lebih lanjut"))
                          ],
                        ),
                      )),
            )),
          ],
        )));
  }
}

class BlogList extends StatelessWidget {
  const BlogList({Key? key}) : super(key: key);

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
                  (index) => Card(
                        child: Column(
                          children: [
                            Image.asset('assets/placeholder.png'),
                            ListTile(
                              title: Text('Card title $index'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            TextButton(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen()))
                                    },
                                child: Text("Pelajari Lebih lanjut"))
                          ],
                        ),
                      )),
            )),
          ],
        )));
  }
}
