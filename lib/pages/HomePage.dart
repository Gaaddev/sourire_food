import 'package:flutter/material.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/TopMenus.dart';
import '../widgets/PopularFoodsWidget.dart';
import '../animation/ScaleRoute.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          'What would you like to eat?',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 17,
              fontWeight: FontWeight.w300),
        ),
        brightness: Brightness.light,
        actions: [
          IconButton(onPressed:
              () {
            //Navigator.push(context, ScaleRoute(page:SignInPage()));
          },
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            //BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: //BottomNavBarWidget()
      null ,
    );
  }
}
