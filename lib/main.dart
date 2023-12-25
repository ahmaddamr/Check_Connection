import 'package:bloc_counter/Cubits/cubit/internet_cubit.dart';
import 'package:bloc_counter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const connectionApp());
}

// ignore: camel_case_types
class connectionApp extends StatelessWidget {
  const connectionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => InternetCubit()..CheckConnection(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
