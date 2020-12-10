import 'package:flutter/material.dart';
import 'package:flutter_state/counter.dart';
import 'package:provider/provider.dart';

class ProviderlaSayacUygulamasi extends StatefulWidget {
  @override
  _ProviderlaSayacUygulamasiState createState() =>
      _ProviderlaSayacUygulamasiState();
}

class _ProviderlaSayacUygulamasiState extends State<ProviderlaSayacUygulamasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider ile Sayac Uygulaması"),
      ),
      body: Center(
        child: MyColumn(),
      ),
      floatingActionButton: MyFloatingActionButtons(),
    );
  }
}

class MyFloatingActionButtons extends StatelessWidget {
  const MyFloatingActionButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mySayac = Provider.of<Counter>(context, listen: false);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          heroTag: "1",
          onPressed: mySayac.arttir,
          child: Icon(Icons.add),
        ),
        SizedBox(height: 5),
        FloatingActionButton(
          heroTag: "2",
          onPressed: mySayac.azalt,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mySayac = Provider.of<Counter>(context, listen: false);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          mySayac.sayac.toString(),
          style: TextStyle(fontSize: 32),
        ),
      ],
    );
  }
}
