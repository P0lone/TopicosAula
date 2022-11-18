import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Navegação em Telas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void clicou() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Tela2(),
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "LISTA",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                "Item 1",
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                clicou();
              },
            ),
            ListTile(
              title: Text(
                "Item 2",
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                clicou();
              },
            ),
            ListTile(
              title: Text(
                "Item 3",
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                clicou();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(fontSize: 20),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegção de Telas"),
        centerTitle: true,
        titleTextStyle: GoogleFonts.poppins(fontSize: 20),
      ),
      body: Center(
        child: Text(
          "Luis Gay",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
    );
  }
}
