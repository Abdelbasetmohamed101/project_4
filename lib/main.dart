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
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: const Text("MOBILE SHOP",
                  style:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.notifications),
                    color: Colors.amber),
              ],
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const <Widget>[
                CustomWidget1(
                    adress: "assets/mobile_2.jpeg",
                    name: "xiomi redmi 9",
                    price: "5000 L.E"),
                CustomWidget1(
                    adress: "assets/mobile_1.jpeg",
                    name: "oppo reno 5",
                    price: "8000 L.E"),
                CustomWidget1(
                    adress: "assets/mobile_2.jpeg",
                    name: "realme C81",
                    price: "5900 L.E"),
                CustomWidget1(
                    adress: "assets/mobile_1.jpeg",
                    name: "sony experia z3",
                    price: "4500 L.E"),
                CustomWidget1(
                    adress: "assets/mobile_1.jpeg",
                    name: "iphone 5s",
                    price: "4000 L.E"),
                CustomWidget1(
                    adress: "assets/mobile_2.jpeg",
                    name: "xiomi note 9",
                    price: "5000 L.E"),
              ],
            )));
  }
}

class CustomWidget1 extends StatelessWidget {
  final String adress;
  final String name;
  final String price;
  const CustomWidget1(
      {super.key,
      required this.adress,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("$adress", height: 50, width: 50),
                  Text("$name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Text("$price",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))
                ])));
  }
}
