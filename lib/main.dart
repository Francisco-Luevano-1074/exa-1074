import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Francisco Luevano Mat: 1074'),
          backgroundColor: const Color.fromARGB(255, 231, 115, 202), // Color de la AppBar
          centerTitle: true, // Centrar el título
        ),
        body: ListViewWithJSON(),
      ),
    );
  }
}

class ListViewWithJSON extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Sarah Abs', 'email': 'Sarah.Abs@gmail.com', 'image': 'assets/images/diana'},
    {'name': 'Emma Spoon', 'email': 'Emma.Spoon@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Rebecca Field', 'email': 'Rebecca.Field@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'James Winter', 'email': 'James.Winter@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Alex Summer', 'email': 'Alex.Summer@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Tom Mountain', 'email': 'Tom.Mountain@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Jenna Hollywood', 'email': 'Jenna.Hollywood@gmail.com', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Diana Winter', 'email': 'Diana.Winter@gmail.com', 'image': 'https://via.placeholder.com/150'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(users[index]['image']!), // Imagen de perfil
            ),
            title: Text(users[index]['name']!),
            subtitle: Text(users[index]['email']!),
          ),
        );
      },
    );
  }
}