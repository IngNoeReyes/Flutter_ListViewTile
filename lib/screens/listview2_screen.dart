import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {

  final options= ["IronMan","Thor","Capitan America"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Center(child: Text("ListView Tipo 2")),
      ),
      body: ListView.separated(
        itemCount: options.length, //tamaño del list
        itemBuilder: (context, index)=> ListTile( //Contructor
        title: Text(options[index]),
        trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.red),
         onTap: () {
                var game = options[index];
                print(game);
              }
        ), 
        separatorBuilder: (_, __)=> Divider(), //Separador (vacios con _)
        ),
      
    );
  }
}


