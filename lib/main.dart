import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

    ListView _horizontalList(int n, double heigth) {
        return ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
            n,
            (i) => Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                width: 200,
                height: heigth--,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const[
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 7
                        )
                    ]
                ),
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Container(
                            height: heigth / 2,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft : Radius.circular(20),
                                    topRight : Radius.circular(20)
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/Begonia-1.jpg"),
                                    fit: BoxFit.fitWidth,
                                )
                            ),
                        ),
                        Container(
                            height: heigth / 2,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft : Radius.circular(20),
                                    bottomRight : Radius.circular(20)
                                ),
                                color: Colors.white,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    Row(
                                        children: const [
                                            Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 16,
                                            ),
                                            Text(
                                                '4,4',
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                            Text(
                                                '/5 (+278 avis)',
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                        ],
                                    ),
                                    const Text(
                                        "Ouvert - ferme à 22h55",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12
                                        ),
                                    ),
                                    const Text(
                                        "Les fleurs d'Anna",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                                    const Text(
                                        "Fleuristes",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                                    Row(
                                        children: const [
                                            Icon(
                                                Icons.location_on,
                                                color: Colors.blue,
                                                size: 16,
                                            ),
                                            Text(
                                                'À 300m',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            )
                                        ],
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            ),
        );
    }

  @override
  Widget build(BuildContext context) {
    double fullwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                      height: 35,
                      width: fullwidth - (fullwidth / 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black.withOpacity(.4),
                                offset: const Offset(.5, .5)),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.black,
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.only(
                  top: 30, left: 10, right: 10, bottom: 30),
              width: fullwidth,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow()],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                    Row(
                        children: [
                        Container(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.yellow,
                            ),
                            child: Row(
                                children: const [
                                Icon(Icons.near_me_rounded),
                                Text(
                                    'A proximité',
                                    style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    ),
                                )
                                ],
                            )),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                            ),
                            child: const Text(
                                'Pantin',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.pink),
                            )),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 8, right: 8),
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                            ),
                            child: const Text(
                                'Toulouse',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.deepPurple),
                            )),
                        ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                            children: const [
                            Icon(Icons.near_me_rounded, color: Colors.black38),
                            Text(
                                'A proximité',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    color: Colors.black38),
                            )
                            ],
                        )),
                    SizedBox(
                        height: 310,
                        child: ListView(
                            children: [
                                SizedBox(
                                    height: 260,
                                    child: _horizontalList(8, 200),
                                ),
                            ],
                        ),
                    )    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
