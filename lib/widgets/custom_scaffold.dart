import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  CustomScaffold({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [body, _buildShortAppBar(context)],
          ),
        ),
      ),
    );
  }

  Card _buildShortAppBar(BuildContext context) {
    return Card(
        elevation: 10.0,
        margin: const EdgeInsets.all(0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'News terkini',
                style: Theme.of(context).textTheme.headline6,
              ),
            )
          ],
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
          ),
        ));
  }
}
