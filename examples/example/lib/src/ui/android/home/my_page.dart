import 'package:example/src/controller/home/my_controller.dart';
import 'package:example/src/data/provider/my_provider.dart';
import 'package:example/src/data/repository/my_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget {

//repository injection
final MyRepository repository = MyRepository(apiClient: MyApiClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: Container(
      child: GetX<MyController>(
        init: MyController(repository: repository),
        builder: (_){
          return Container();
        }),
      ),
    );
  }
}