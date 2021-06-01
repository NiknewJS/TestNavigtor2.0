import 'package:flutter/material.dart';

@immutable
class StartActivityForResult extends StatelessWidget{

  List<String>list = ['😀😀😀','😆😆😆','😍😍😍','😋😋😋','😡😡😡','👿👿👿','🎃','🤖','👾',];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Scaffold(
      appBar:  AppBar(
        title:  Text('Selecte Smily'),
      ),
      body:  ListView.builder(itemBuilder: (context, i){
        return  ListTile(title:  Text(list[i]),
          onTap: (){
            Navigator.of(context).pop({'item': list[i]});
          },
        );
      }, itemCount: list.length,),
    );
  }
}