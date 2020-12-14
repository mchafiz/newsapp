import 'package:flutter/material.dart';
import 'package:newsapp/detail_page.dart';
import 'package:newsapp/style.dart';

import 'NewsListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            buttonColor: secondaryColor,
            textTheme: ButtonTextTheme.primary),
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        appBarTheme: AppBarTheme(
            textTheme: myTextTheme.apply(bodyColor: Colors.black),
            elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
        DetailPage.routeName: (context) =>
            DetailPage(article: ModalRoute.of(context).settings.arguments),
        ArticleWebView.routeName: (context) =>
            ArticleWebView(url: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
