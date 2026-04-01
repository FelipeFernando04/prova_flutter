import 'package:flutter/material.dart';
import 'screens/cadastro_screen.dart';

void main() {
  runApp(const LeituraApp());
}

class LeituraApp extends StatelessWidget {
  const LeituraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Leitura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const CadastroScreen(),
    );
  }
}
