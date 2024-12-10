import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: _buildBody(),
        bottomNavigationBar: _buildNavbar(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 3, 117, 247),
      // leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      title: const Text('Flutter Lesson'),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt))
      ],
    );
  }

  Drawer _buildDrawer() => const Drawer();
  Center _buildBody() => const Center(child: Text('Body'));

  BottomNavigationBar _buildNavbar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
      ],
    );
  }
}
