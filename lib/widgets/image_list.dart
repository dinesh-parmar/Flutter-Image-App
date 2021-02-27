
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../src/models/Image_Model.dart';



class ImageList extends StatelessWidget{
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index){
            return buildImage(images[index]);
        });



    throw UnimplementedError();
  }
  
  Widget buildImage(ImageModel image){
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),

      decoration: BoxDecoration(
          border: Border.all(color: Colors.red)
      ),
      child: Column(
            children : <Widget>[
              Padding(
                  child: Image.network(image.url),
                  padding: EdgeInsets.only(
                      bottom: 8.0 )
              ),
              Text(image.title)
            ],
      ),
    );
  } 
}



