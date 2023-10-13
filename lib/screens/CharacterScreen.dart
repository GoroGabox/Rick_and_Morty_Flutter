import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
      ),
      body: Center(
        child: Text('Pantalla de Lista de Personajes'),
      ),
    );
  }
}