import 'package:flutter/material.dart';
import 'package:async/async.dart';

import 'package:http/http.dart' show get;
import 'dart:convert';
import '../src/models/Image_Model.dart';

import '../widgets/image_list.dart';






class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
    throw UnimplementedError();
  }



}


class AppState extends State<App>{

  int counter =0;
  List<ImageModel> images=[];

  fetchImage() async {

    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    setState((){
      images.add(imageModel);
    });




  }




  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s See Images'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
       ),


    );
  }

}