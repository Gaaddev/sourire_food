import 'package:flutter/material.dart';

class TopMenus extends StatefulWidget {
  const TopMenus({Key? key}) : super(key: key);

  @override
  State<TopMenus> createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TopMenuTiles(name: 'Burger', imageUrl: 'images/burger.png', slug: ''),
          TopMenuTiles(name: 'Sushi', imageUrl: 'images/sushi.png', slug: ''),
          TopMenuTiles(name: 'Pizza', imageUrl: 'images/pizza.png', slug: ''),
          TopMenuTiles(name: 'Cake', imageUrl: 'images/cake.png', slug: ''),
          TopMenuTiles(name: 'Ice Cream', imageUrl: 'images/ice_cream.png', slug: ''),
          TopMenuTiles(name: 'Soft Drink', imageUrl: 'images/soft_drink.png', slug: ''),
          TopMenuTiles(name: 'Burger', imageUrl: 'images/burger.png', slug: ''),
          TopMenuTiles(name: 'Sushi', imageUrl: 'images/sushi.png', slug: ''),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(3.0),
                ),
              ),
              child: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset(
                    //'assets/images/topmenu/' + imageUrl + '.png',
                    imageUrl,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF6e6e71),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
