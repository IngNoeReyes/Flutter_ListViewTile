
import 'package:flutter/material.dart';


class ListView1 extends StatelessWidget {

  var options= ["IronMan","Thor","Capitan America"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Center(child: Text("ListView Tipo 1")),
      ),
      body: ListView(
        children: [
          ...options.map(//spread
            (vengadores)=>  ListTile(
              title: Text(vengadores),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                
              }
            )
          ).toList(),

          const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 20,
        )
        ],
      ),
      
    );
  }
}


