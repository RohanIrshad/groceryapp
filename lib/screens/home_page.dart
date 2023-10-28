import 'package:flutter/material.dart';
import 'package:groceryapp/utils/colors.dart';
import 'package:groceryapp/utils/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var widt = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: heigh,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: MyAppBar(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Main\nCategories',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 120, // Set a specific height here
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? morange
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            blurRadius: 6,
                                          )
                                        ]),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Card(
                                          elevation: 0,
                                          color: mwhite,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: index % 2 == 0
                                                ? Icon(
                                                    Icons.fastfood_rounded,
                                                    size: 35,
                                                    color: morange,
                                                  )
                                                : Icon(
                                                    Icons.local_cafe_rounded,
                                                    size: 35,
                                                    color: morange,
                                                  ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Burgers',
                                          style: TextStyle(
                                            color: index % 2 == 0
                                                ? Colors.white
                                                : mblack,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Image.network(
                                      'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=400',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -60,
                                    left: -40,
                                    child: Container(
                                      height: 100,
                                      width: 150,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                      ),
                                      child: const Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          '25-30 min',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Text(
                            'Burgers Story',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: morange,
                              ),
                              const Text(
                                '4.7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const Text(
                                'Burgers',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const Text(
                                'Snacks',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const Text(
                                '\$\$\$',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: widt * 0.3,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.restaurant_outlined,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_rounded,
                  color: Colors.black54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_3_rounded,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
