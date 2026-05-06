import 'package:flutter/material.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget { const
MyApp({super.key});
@override
Widget build(BuildContext context) { 
  
  return MaterialApp(
    debugShowCheckedModeBanner: false,
title: 'Contoh Navigasi (Pindah Halaman)', initialRoute: '/',
routes: {
  '/': (context) => const FirstPage(),
  '/second': (context) => const SecondPage(),
  '/widget': (context) => const WidgetBertingkat(),
  '/User Input Example': (context) => const UserInputExample(),
  '/Dynamic List Example': (context) => const DynamicListExample(),
  '/Navigasi Sederhana': (context) => const NavigasiSederhanaPage(),
  '/Grid View': (context) => const HomePage(),
  '/tentang': (context) => const TentangSaya(),
},);
}
}
class FirstPage extends StatefulWidget { const
FirstPage({super.key});
@override
State<FirstPage> createState() => _FirstPageState();
}
int selectedIndex = -1;
class _FirstPageState extends State<FirstPage> {
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
title: const Text('MyPorto'),
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
 const Text(
    'Cek hasil karyaku disini: ',
    style: TextStyle(fontSize: 16),
  ),

  const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          setState(() {
    selectedIndex = 0;
  });
          Navigator.pushNamed(context, '/second');
        },
        child: const Text('Counter'),
      style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), 
  shape: StadiumBorder(), 
  backgroundColor: selectedIndex == 0
    ? const Color.fromARGB(255, 240, 16, 16)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,    
),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
  setState(() {
    selectedIndex = 1;
  });
  Navigator.pushNamed(context, '/widget');
},
        child: const Text('Widget Bertingkat'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), // ukuran sama semua
  shape: StadiumBorder(), 
  backgroundColor: selectedIndex == 1
    ? const Color.fromARGB(255, 255, 255, 34)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,    // bentuk oval
),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = 2;
          });
          Navigator.pushNamed(context, '/User Input Example');
        },
        child: const Text('User Input Example'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), // ukuran sama semua
  shape: StadiumBorder(), 
  backgroundColor: selectedIndex == 2
    ? const Color.fromARGB(255, 101, 243, 13)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,    // bentuk oval
),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = 3;
          });
          Navigator.pushNamed(context, '/Dynamic List Example');
        },
        child: const Text('Dynamic List Example'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), // ukuran sama semua
  shape: StadiumBorder(),
  backgroundColor: selectedIndex == 3
    ? const Color.fromARGB(255, 75, 225, 255)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,     // bentuk oval
),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = 4;
          });
          Navigator.pushNamed(context, '/Navigasi Sederhana');
        },
        child: const Text('Navigasi Sederhana'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), 
  shape: StadiumBorder(), 
  backgroundColor: selectedIndex == 4
    ? const Color.fromARGB(255, 121, 16, 240)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,     
      ),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = 5;
          });
          Navigator.pushNamed(context, '/Grid View');
        },
        child: const Text('Grid View'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), 
  shape: StadiumBorder(),     
  backgroundColor: selectedIndex == 5
    ? Colors.purple
    : Colors.grey.shade200,
    foregroundColor: Colors.black,    
),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = 6;
          });
          Navigator.pushNamed(context, '/tentang');
        },
        child: const Text('Tentang Saya'),
        style: ElevatedButton.styleFrom(
  minimumSize: Size(250, 50), 
  shape: StadiumBorder(),     
  backgroundColor: selectedIndex == 6
    ? const Color.fromARGB(255, 255, 126, 126)
    : Colors.grey.shade200,
    foregroundColor: Colors.black,     
),
      ),
    ],
  ),
),
);
}
}
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _counter = 0; 

  void _incrementCounter() { 
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
      ),
    );
  }
}
class WidgetBertingkat extends StatelessWidget {
  const WidgetBertingkat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Widget Bertingkat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/60.jpeg',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Aku adalah Novi Nopisa, seorang mahasiswa Program Studi Sistem Informasi',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
class UserInputExample extends StatefulWidget {
  const UserInputExample({super.key});

  @override
  State<UserInputExample> createState() => _UserInputExample();
}

class _UserInputExample extends State<UserInputExample> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('User Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              
             'You entered: $_inputText',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class DynamicListExample extends StatefulWidget { const
DynamicListExample({super.key});
@override
DynamicListExampleState createState() =>
DynamicListExampleState();
}
class DynamicListExampleState extends State<DynamicListExample> { List<String> items =
['Apple', 'Banana', 'Orange',];
TextEditingController textEditingController = TextEditingController();
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
title: const Text('Dynamic List Example'),
),
body: Column(
children: <Widget>[ Expanded(
child: ListView.builder( itemCount: items.length,
itemBuilder: (context, index) { return ListTile(
title: Text(items[index]),
);
},
),
),
Padding(
padding: const EdgeInsets.all(8.0), child: Row(
children: <Widget>[ Expanded(
child: TextField(
controller: textEditingController,
decoration: const InputDecoration( labelText: 'Add New Item',
),
),
),
IconButton(
  icon: const Icon(Icons.add), onPressed: () {
setState(() {
items.add(textEditingController.text); textEditingController.clear();
});
},
),
],
),
),
],
),
);
}
}

class NavigasiSederhanaPage extends StatelessWidget {
  const NavigasiSederhanaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasi Sederhana'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: [
          _buildMenu(context, Icons.beach_access, 'Pantai', '/pantai'),
          _buildMenu(context, Icons.terrain, 'Gunung', '/gunung'),
          _buildMenu(context, Icons.museum, 'Budaya', '/budaya'),
          _buildMenu(context, Icons.restaurant, 'Kuliner', '/kuliner'),
          _buildMenu(context, Icons.air, 'Sungai', '/sungai'),
          _buildMenu(context, Icons.forest, 'Hutan', '/hutan'),
        ],
      ),
    );
  }

  Widget _buildMenu(
      BuildContext context, IconData icon, String title, String route) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class TentangSaya extends StatelessWidget {
  const TentangSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/60.jpeg'),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Novi Nopisa',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Mahasiswa Sistem Informasi',
                  style: TextStyle(fontSize: 16),
                ),

                const Divider(height: 30, thickness: 1),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('NPM: 20241320061'),
                ),

                const SizedBox(height: 5),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Kampus: Universitas Kebangsaan Republik Indonesia'),
                ),

                const SizedBox(height: 5),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Hobi: Memasak, Travelling'),
                ),

                const SizedBox(height: 20),

                const Text(
                  '"Saya tertarik belajar Praktikum Pemrograman Aplikasi Bergerak"',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}