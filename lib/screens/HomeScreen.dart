import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/screens/CharacterScreen.dart';
import 'package:rick_and_morty_app/screens/GalleryScreen.dart';
import 'package:rick_and_morty_app/screens/PlacesScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick y Morty'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Usuario'),
              accountEmail: const Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GalleryScreen()));
                // Navegar a la pantalla de galería
                Navigator.pop(context);
                // Implementa la navegación a la galería aquí
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: const Text('Galería'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CharactersScreen()));
                // Navegar a la pantalla de galería
                Navigator.pop(context);
                // Implementa la navegación a la galería aquí
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Personajes'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlacesScreen()));
                // Navegar a la pantalla de lista de personajes
                Navigator.pop(context);
                // Implementa la navegación a la lista de personajes aquí
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: const Text('Lugares'),
              onTap: () {
                // Navegar a la pantalla de lista de lugares
                Navigator.pop(context);
                // Implementa la navegación a la lista de lugares aquí
              },
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: const Text('Salir'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        height: 700,
        width: 480,
        child: Column(
          children: [
            Center(
                child: Text('Rick and Morty',
                    style: TextStyle(color: Colors.white, fontSize: 36))),
          ],
        ),
      ),
    );
  }
}