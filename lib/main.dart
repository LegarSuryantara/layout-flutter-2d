import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
  Widget titlesection = Container(
    padding: const EdgeInsets.all(16.0),
    child: Row(children: [
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: const Text(
              'Danau Toba',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Text(
            'Sumatra Utara, Indonesia',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ) ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('41')
    ],
    )
    
  );



    Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Danau Toba adalah danau alami berukuran besar di Sumatera Utara, Indonesia yang terletak di kaldera gunung supervulkan. Danau ini memiliki panjang 100 kilometer, lebar 30 kilometer, dan kedalaman 508 meter. Danau ini terletak di tengah pulau Sumatra bagian utara dengan ketinggian permukaan sekitar 900 meter. ',
    softWrap: true,
  ),
);

  


return MaterialApp(
      title: 'Flutter layout: Legar Suryantara',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Legar suryantara | 2043'),
        ),
        body: ListView(
          children: [
            Image.asset(
              '../assets/images/danau.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,

            ),
            titlesection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

}