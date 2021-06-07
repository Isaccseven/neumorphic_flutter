import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_demo/views/widgets/Base_Neumorphic.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xffDFDEE0),
        lightSource: LightSource.topLeft,
        depth: 5,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: -6,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BaseNeumorphic(
              width: MediaQuery.of(context).size.width.toInt() * 7,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "English",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "German",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BaseNeumorphic(
              width: MediaQuery.of(context).size.width.toInt() * 7,
              height: 300,
              child: Center(
                child: Text(
                  "Add your Text",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            BaseNeumorphic(
              width: MediaQuery.of(context).size.width.toInt() * 7,
              height: 300,
              child: Center(
                child: Text(
                  "Translated Text",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
