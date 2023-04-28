import 'package:flutter/material.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaHome(),
    );
  }
}

class PaginaHome extends StatefulWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  int contador = 0;
  void aluno_entrou() {
    setState(() {
      contador++;
    });
    print(contador);
  }
  void aluno_saiu(){
    setState(() {
      if(contador >0){
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("aplicativo da thauane"),
      ),
      drawer: const Drawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imagens/salsicha.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "comportamento dos alunos",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 250, 248, 248),
                fontWeight: FontWeight.bold,
                letterSpacing: 6,
              ),
            ),
            Text(
              "$contador",
              style: const TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 244, 243, 243),
                fontWeight: FontWeight.w500,
                letterSpacing: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              TextButton(
                onPressed: aluno_entrou,
                child: const Text("entrou"),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(45, 197, 75, 0.612),
                  primary: const Color.fromARGB(255, 254, 254, 254),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                width: 64,
              ),

              TextButton(
                onPressed: aluno_saiu,
                child: const Text("Saiu"),
                style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(18, 232, 60, 0.612),
                primary: const Color.fromARGB(255, 248, 246, 246),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
             ],
            ),
          ],
        ),
      ),
    );
  }
}
