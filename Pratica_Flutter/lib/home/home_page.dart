import 'package:flutter/material.dart';
import 'package:flutter_faculdade/atividades/atividade_2.dart';
import 'package:flutter_faculdade/atividades/atividade_3.dart';
import 'package:flutter_faculdade/atividades/atividade_4.dart';
import 'package:flutter_faculdade/atividades/atividade_5.dart';
import 'package:flutter_faculdade/core/app_gradients.dart';

import 'package:flutter_faculdade/shared/buttons/level_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          top: true,
          child: Center(
            child: Container(
              child: Text(
                'Atividades flutter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white54),
            padding: EdgeInsets.all(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Atividade2(),
                        ));
                  },
                  child: LevelButtonWidget(
                    label: "roxo",
                    title: "Atividade_2",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Atividade3(),
                        ));
                  },
                  child: LevelButtonWidget(
                    label: "verde",
                    title: "Atividade_3",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Atividade4(),
                        ));
                  },
                  child: LevelButtonWidget(
                    label: "laranja",
                    title: "Atividade_4",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Atividade5(),
                        ));
                  },
                  child: LevelButtonWidget(
                    label: "vermelho",
                    title: "Atividade_5",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
