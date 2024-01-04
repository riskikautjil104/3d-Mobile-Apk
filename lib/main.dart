import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//   home: Scaffold(
// appBar: AppBar(
//   title: Text(
//     "3D App",
//     style: TextStyle(
//         color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//   ),
//   backgroundColor: Colors.deepPurple[200],
// ),
//     body: BabylonJSViewer(
//       src: 'assets/3d/3d_masjed_modeling.glb',
//     ),
//   ),
// );
//   }
// }
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "3D App",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[200],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Masdjid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.villa),
            label: 'vila',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BabylonJSViewer(
        src: 'assets/3d/3d_masjed_modeling.glb',
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BabylonJSViewer(
        src: 'assets/3d/vila_maria.glb',
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BabylonJSViewer(
        src: 'assets/3d/3_bedroom_classic_american_home.glb',
      ),
    );
  }
}
