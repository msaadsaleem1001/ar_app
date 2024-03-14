
import 'package:flutter/material.dart';
import '../Assets/models.dart';
import 'ar_model_viewer.dart';

class SelectionModel extends StatelessWidget {
  const SelectionModel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> models = [
      Models.car1,
      Models.gogels,
      Models.racingBike,
      Models.sniper,
      Models.racingCar,
      Models.gun
    ];

    List<String> buttonName = [
      'Simple Car',
      'Gogels',
      'Racing Bike',
      'Sniper Gun',
      'Racing Car',
      'Simple Gun'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text('Select Model',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
      ),
      body: SafeArea(
        child: ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              enableFeedback: false,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ARModelViewer(
                            displayModel: models[index])));
              },
              child: Center(
                child: Text(buttonName[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              )
            ),
          );
        }
      ),)
    );
  }
}
