import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String nome;

  const HomeScreen({
    super.key,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    final livros = [
      {'titulo': 'Dom Casmurro', 'autor': 'Machado de Assis'},
      {'titulo': '1984', 'autor': 'George Orwell'},
      {'titulo': 'O Pequeno Príncipe', 'autor': 'Antoine de Saint-Exupéry'},
      {'titulo': 'A Revolução dos Bichos', 'autor': 'George Orwell'},
      {'titulo': 'Capitães da Areia', 'autor': 'Jorge Amado'},
    ];

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Bem-vindo, $nome!',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Últimos 5 livros lidos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: livros.length,
                  itemBuilder: (context, index) {
                    final livro = livros[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(livro['titulo']!),
                        subtitle: Text('Autor: ${livro['autor']}'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
