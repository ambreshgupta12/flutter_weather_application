import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/bloc/weather_bloc.dart';
import 'package:weatherapplication/respository/api_respository.dart';
import 'package:weatherapplication/ui/weather_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(create: (BuildContext context)=>WeatherBloc(apiRespository: ApiRespository()),
          child: WeatherScreen()
      ),
    );
  }
}

