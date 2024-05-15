import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyMeal());
}

class MyMeal extends StatefulWidget {
  const MyMeal({super.key});

  @override
  State createState() => MyMealState();
}

class MyMealState extends State{
  int corba = 1;
  int yemek = 1;
  int tatli = 1;

  List corbaAdi = [
    "Yoğurt Çorbası",
    "Ezogelin Çorbası",
    "Tarhana Çorbası",
    "Domates Çorba",
    "Tavuk Çorbası",
  ];

  List yemekAdi = [
    "Kozalak Mantı",
    "Mercimek Köftesi",
    "Ratatuy",
    "Makarna",
    "Karnıyarık",
  ];

  List tatliAdi = [
    "İrmik Helvası",
    "Baklava",
    "Profiterol",
    "Magnolia",
    "Frambuazlı Cheesecake",
  ];

  List corbaAciklamasi = [
    " 1 kase Yoğurt Çorbası:\n 112 kaloridir.",
    " 1 kase Ezogelin Çorbası:\n 91 kaloridir.",
    " 1 kase Tarhana Çorbası:\n 151 kaloridir.",
    " 1 kase Domates Çorbası:\n 67 kaloridir.",
    " 1 kase Tavuk Çorbası:\n 132 kaloridir.",
  ];

  List yemekAciklamasi = [
    " 1 kase Kozalak Mantı:\n 280 kaloridir.",
    " 1 kase Mercimek Köftesi:\n 215 kaloridir.",
    " 1 kase Ratatuy:\n 180 kaloridir.",
    " 1 kase Makarna:\n 320 kaloridir.",
    " 1 kase Karnıyarık:\n 250 kaloridir.",
  ];

  List tatliAciklamasi = [
    " 1 porsiyon İrmik Helvası:\n 300 kaloridir.",
    " 1 dilim Baklava:\n 250 kaloridir.",
    " 1 porsiyon Profiterol:\n 350 kaloridir.",
    " 1 porsiyon Magnolia:\n 280 kaloridir.",
    " 1 dilim Frambuazlı Cheesecake:\n 320 kaloridir.",
  ];

  List corbaFiyat = [50, 60, 70, 80, 90];
  List yemekFiyat = [230, 260, 250, 200, 290];
  List tatliFiyat = [150, 160, 170, 180, 190];

  int totalFiyat = 0;

void surprizMenu() {
  int yeniCorba;
  int yeniYemek;
  int yeniTatli;

  do {
    yeniCorba = Random().nextInt(corbaAdi.length) + 1;
  } while (yeniCorba == corba);

  do {
    yeniYemek = Random().nextInt(yemekAdi.length) + 1;
  } while (yeniYemek == yemek);

  do {
    yeniTatli = Random().nextInt(tatliAdi.length) + 1;
  } while (yeniTatli == tatli);

  setState(() {
    corba = yeniCorba;
    yemek = yeniYemek;
    tatli = yeniTatli;
  });
}

  @override
  Widget build(BuildContext context) {
    totalFiyat = corbaFiyat[corba - 1] + yemekFiyat[yemek - 1] + tatliFiyat[tatli - 1];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(          
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            "...LeZZet Sepeti...",
            style: TextStyle(              
              fontFamily: "Truculenta",
              color: Colors.white,
              fontSize: 30.0,
              letterSpacing: 10,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    corbaAdi[corba - 1],
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextButton(
                            onPressed: () {
                              print("Çorba_$corba Tıklandı");
                              setState(() {
                                corba = corba + 1;
                                if (corba == 6) {
                                  corba = 1;
                                }
                              });
                            },
                            child: Image.asset(
                              "assets/images/corba_$corba.jpg",
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${corbaAciklamasi[corba - 1]} "),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Fiyat: ${corbaFiyat[corba - 1]} TL"),
                ],
              ),

              const Divider(
                height: 2,
                color: Colors.black26,
              ),

              Column(
                children: [
                  Text(
                    yemekAdi[yemek - 1],
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: TextButton(
                            onPressed: () {
                              print("Yemek_$yemek Tıklandı");
                              setState(() {
                                yemek = yemek + 1;
                                if (yemek == 6) {
                                  yemek = 1;
                                }
                              });
                            },
                            child: Image.asset(
                              "assets/images/yemek_$yemek.jpg",
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${yemekAciklamasi[yemek - 1]}"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Fiyat: ${yemekFiyat[yemek - 1]} TL"),
                ],
              ),

              const Divider(
                height: 2,
                color: Colors.black26,
              ),

              Column(
                children: [
                  Text(
                    tatliAdi[tatli - 1],
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextButton(
                            onPressed: () {
                              print("Tatlı_$tatli Tıklandı");
                              setState(() {
                                tatli = tatli + 1;
                                if (tatli == 6) {
                                  tatli = 1;
                                }
                              });
                            },
                            child: Image.asset(
                              "assets/images/tatlı_$tatli.jpg",
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${tatliAciklamasi[tatli - 1]}"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Fiyat: ${tatliFiyat[tatli - 1]} TL"),
                ],
              ),

              const Divider(
                height: 2,
                color: Colors.black26,
              ),

              Container(
                color: Colors.yellow,
                width: double.infinity,
                height: 20,
                child: Center(
                  child: Text(
                    "Toplam Fiyat: $totalFiyat TL",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: surprizMenu,
                child: const Text("Sürpriz Menü"),
              ),

              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  print("Sipariş Tutarı: $totalFiyat TL");
                },
                child: const Text("Sipariş Ver"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
