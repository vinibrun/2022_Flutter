import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MenuPagina1(),
  ));
}

class MenuPagina1 extends StatelessWidget {
  const MenuPagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CV Vinicius Brun Kriesang',
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("\nExperiência",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ElevatedButton(
              child: const Text("VipNet Telecom"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VipNet()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("Fábrica de Película"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Fabrica()),
                );
              },
            ),
            ElevatedButton(
              child: const Text("FuelTech"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FuelTech()),
                );
              },
            ),
            Text("\nFormação Acadêmica",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ElevatedButton(
              child: const Text("University of the People"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UoPeople()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.red // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Universidade Federal do Rio Grande do Sul"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ufrgs()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.red // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Fundação Escola Técnica Liberato (...)"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Liberato()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.red // set the background color
                  ),
            ),
            Text("\nProjetos Científicos",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ElevatedButton(
              child: const Text("Próprios"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjProprios()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Participações"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjPart()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("PRÓXIMA PÁGINA"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPagina2 extends StatelessWidget {
  const MenuPagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV Vinicius Brun Kriesang'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("\nOutros",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ElevatedButton(
              child: const Text("Olimpíadas Científicas"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Olimpiadas()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Cursos"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cursos()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Qualificações"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Qualificacoes()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("Idiomas"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Idiomas()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange // set the background color
                  ),
            ),
            ElevatedButton(
              child: const Text("PÁGINA ANTERIOR"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPagina1()),
            );
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}

class VipNet extends StatelessWidget {
  const VipNet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VipNet Telecom'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/vipnet.png'),
            Text(
              "\nVipNet Telecom, Pato Bragado - PR, fevereiro de 2022 a atualmente, com foco em: atualização de documentação de rede de fibra óptica, transpondo-a para o software IXC InMap; criação de indexadores e padrão de nomenclatura única para os elementos do mapa; desenvolvimento de tabelas em Google Sheets para geração semi-automatizada de nomes de elementos; treinamento dos funcionários para uso do novo sotware e tabelas, realizando a migração para o sistema novo, e; desenvolvimento de robô de atendimento para WhatsApp.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Fabrica extends StatelessWidget {
  const Fabrica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fabrica de Pelicula'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/fabrica.png'),
            Text(
              "Fábrica de Película, Porto Alegre - RS, novembro de 2020 a janeiro de 2022, tendo como responsabilidade implementar uma linha de produção composta por: uma impressora, uma slitter, uma laminadora, uma máquina de batida, duas CNCs, uma lavadora, um compressor, e um forno pressurizado. Meu foco foi em: realizar a engenharia reversa do produto, identificando as suas matérias primas e os processos da sua fabricação; selecionar máquinas compatíveis entre si, de fabricantes brasileiros e chineses; conduzir testes nas matérias primas candidatas, selecionando as características que agregam maior valor ao produto; execução de pré-projeto elétrico e projeto de ampliação de linha pneumática, e; desenvolvimento de sistema de acompanhamento de movimentação de lotes, utilizando etiquetas com código de barra, seis estações de cadastro, e onze tabelas interconectadas no Google Sheets. ",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class FuelTech extends StatelessWidget {
  const FuelTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FuelTech'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/fueltech.webp'),
            Text(
              "\nFueltech, Porto Alegre - RS, novembro de  2017 a fevereiro de 2020, com foco em: desenvolvimento de placas de circuito impresso no software Altium Designer; programação em linguagem C para sistemas embarcados; liderança de projeto utilizando a metodologia ágil Scrum; geração de documentação no padrão ISO 9001; acompanhamento técnico da fabricação de placas em linha de produção, desenvolvendo procedimentos para garantia de qualidade e segurança dos funcionários, e; condução de testes de novas funções e circuitos.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class UoPeople extends StatelessWidget {
  const UoPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University of the People'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/uopeople.jpeg'),
            Text(
              "\nAssociate Degree em Ciência da Computação, na University of the People, situada em Pasadena - Califórnia - Estados Unidos, na modalidade à distância, iniciado em abril de 2022, com previsão de formatura em dezembro de 2024, e possibilidade de transformar a matrícula para Bacharel após a conclusão.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Ufrgs extends StatelessWidget {
  const Ufrgs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UFRGS'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/ufrgs.jpg'),
            Text(
              "\nBacharel em Engenharia Elétrica, na Universidade Federal do Rio Grande do Sul, situada em Porto Alegre - RS, inicado em março de 2018, trancado em julho de 2020, sem previsão de prosseguimento. ",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Liberato extends StatelessWidget {
  const Liberato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liberato'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/liberato.jpg'),
            Text(
              "\nCurso Técnico de Eletrônica, integrado ao Ensino Médio, na Fundação Escola Técnica Liberato Salzano Vieira da Cunha, situada em Novo Hamburgo - RS, com formatura em dezembro de 2017.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjProprios extends StatelessWidget {
  const ProjProprios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projetos Próprios'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/ada.png'),
            Text(
              "\n04 Projetos científicos desenvolvidos, dentre eles: Fundação Escola Técnica Liberato Salzano Vieira da Cunha - Ada: Robô Educacional, 4ª colocação na Mostra Internacional de Ciência e Tecnologia (MOSTRATEC) - Engenharia Eletrônica, 2016.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjPart extends StatelessWidget {
  const ProjPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Participações em Projetos'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\n05 Participações em projetos científicos, desenvolvendo o circuito eletrônico, como: Fundação Escola Técnica Liberato Salzano Vieira da Cunha - STEPKIDS: Dispositivo móvel para crianças portadoras de paralisia cerebral, 2ª colocação na Mostra Internacional de Ciência e Tecnologia (MOSTRATEC), Engenharia Mecânica, além de outras 5 premiações, 2016.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina1()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Olimpiadas extends StatelessWidget {
  const Olimpiadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olimpiadas Científicas'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/medalhas.png'),
            Text(
              "\n24 Premiações em olimpíadas acadêmicas nacionais, dentre elas:\n 1. Olimpíada Brasileira de Astronomia e Astronáutica - Medalha de Ouro, 2016;\n 2. Olimpíada Brasileira de Robótica - Modalidade Teórica - Medalha de Ouro, 2016; \n 3. Olimpíada Brasileira de Matemática das Escolas Públicas - Medalha de Prata, 2016; \n 4. Olimpíada Brasileira de Robótica - Modalidade Prática - Prêmio Inovação, 2015.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Cursos extends StatelessWidget {
  const Cursos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\nPrograma de Iniciação Científica da Olimpíada Brasileira de Matemática das Escolas Públicas- PIC - OBMEP, organizado pelo CNPq, sediado na Unisinos, em São Leopoldo - RS, nos anos de 2014, 2015 e 2016.\n  Disciplina de Pneumática, junto com as turmas do Curso Técnico de Mecânica, no período de 04/03/2016 até 08/07/2016, na Fundação Escola Técnica Liberato Salzano Vieira da Cunha. Carga horária: 30 horas.\n  XIV Jornada Espacial, da qual participaram 71 alunos, selecionados de 90.000 que realizaram a Olimpíada Brasileira de Astronomia e Astronáutica em nível médio, em São José dos Campos - SP, nos dias 04 a 10 de dezembro de 2016.\n  Formação pessoal e profissional: desenvolvimento de atitudes para o mundo do trabalho - 2ª edição, na Fundação Escola Técnica Liberato Salzano Vieira da Cunha, nos dias 24 e 25 de junho de 2016. Carga horária: 20 horas.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Qualificacoes extends StatelessWidget {
  const Qualificacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qualificacoes'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\nEstá apto a:\n  1. desenvolver e manipular equipamentos eletrônicos relacionados à automação industrial e residencial, controle e supervisão de maquinário, sistemas de comunicações e afins;\n  2. elaborar sistemas de rede, elaborando projetos, configurando e instalando equipamentos de TI;\n  3. elaborar projetos científicos, encontrando soluções para situações-problema;\n  4. desenvolver algoritmos para computadores, CLPs e sistemas baseados em microcontroladores Microchip, Atmel e STMicroelectronics;\n  5. participar de atividades relacionadas à astronomia e astronáutica, como construção de foguetes, satélites e afins.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

class Idiomas extends StatelessWidget {
  const Idiomas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Idiomas'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\n - Inglês avançado/fluente, tendo textos publicados em www.viniciusbrun.com;\n  - Alemão básico - Zentrale Deutschprüfung Niveau A2;\n  - Espanhol básico.",
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPagina2()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.black // set the background color
                  ),
              child: const Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}
