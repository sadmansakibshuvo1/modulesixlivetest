import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add cart functionality here
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Apples'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Bananas'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Milk'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Bread'),
          ShoppingItemTile(icon: Icons.shopping_basket, name: 'Eggs'),
          // Add more items as needed
        ],
      ),
    );
  }
}

class ShoppingItemTile extends StatelessWidget {
  final IconData icon;
  final String name;

  ShoppingItemTile({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      // You can add more styling here if desired
    );
  }
}
