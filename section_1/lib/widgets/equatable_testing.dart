// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here you can see same class with same value
        // but they are not equal
        // here we have to use equatable package as you see given below a person class extands with equatable
        Boy person1 = const Boy(name: 'John', marks: 30);
        Boy person2 = const Boy(name: 'John', marks: 30);
        print(person1 == person2);
        print(person1.hashCode.toString());
        print(person2.hashCode.toString());
      },
      child: const Icon(Icons.thumb_up_alt),
      ),
    );
  }
}

class Boy extends Equatable {
  final String name;
  final int marks;

  const Boy({
    required this.name,
    required this.marks,
  });
// here we have make the missing override of equatable
  @override
  List<Object?> get props => [name, marks];
}
