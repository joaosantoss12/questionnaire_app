import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LandingPage(), // Start from the LandingPage
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF37475B),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Student | 118244   MEDICINA DENTÁRIA',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
              ),
            ),
            Text(
              'END OF YEAR EXAM   v4.3.2',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.amber, // Cor de fundo amarela
        child: Center(
          child: Container(
            width: 600,
            height: 320,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                // Painel esquerdo com ícone
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xFF37475B), // Custom background color
                    child: Center(
                      child: Image.asset(
                        'assets/images/stop.png', // Path to your image
                        width: 165, // Adjust the size as needed
                        height: 165, // Adjust the size as needed
                        fit: BoxFit.contain, // Optionally, you can set the image fit
                      ),
                    ),
                  ),
                ),
                // Painel direito com texto e botões
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          'Do Not Start Until Instructed',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[700],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Do not click 'Continue' unless you have been instructed to start your exam.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              width: double.infinity, // Faz o botão ocupar toda a largura disponível
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), // Mais espaço interno
                                  backgroundColor: Colors.green,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero, // Sem borda arredondada
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const QuizPage()),
                                  );
                                },
                                child: const Text(
                                  'Continue',
                                  style: TextStyle(color: Colors.white), // Letras brancas
                                ),
                              ),
                            ),
                            const SizedBox(height: 16), // Espaço entre os botões
                            SizedBox(
                              width: double.infinity, // Faz o botão ocupar toda a largura disponível
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), // Mais espaço interno
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero, // Sem borda arredondada
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context); // Voltar ao dashboard
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.blue), // Letras brancas
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green, // Cor de fundo
          child: Center(
            child: Container(
              width: 600,
              height: 320,
              decoration: const BoxDecoration(
                color: Colors.white, // Cor do fundo do card
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF364658), // Cor cinza escuro
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.white, // Ícone branco
                          size: 135,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 8), // Espaço entre o ícone e o texto
                          Text(
                            'Congratulations!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16), // Espaço entre os textos
                          Text(
                            'Your exam has been successfully submitted.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(), // Espaço flexível para empurrar os botões para baixo
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity, // Faz o botão ocupar toda a largura disponível
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), // Mais espaço interno
                                    backgroundColor: Colors.blue,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, // Sem borda arredondada
                                    ),
                                  ),
                                  onPressed: () {
                                    // Lógica para feedback
                                  },
                                  child: const Text(
                                    'Leave Feedback',
                                    style: TextStyle(color: Colors.white), // Letras brancas
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16), // Espaço entre os botões
                              SizedBox(
                                width: double.infinity, // Faz o botão ocupar toda a largura disponível
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), // Mais espaço interno
                                    backgroundColor: Colors.green,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, // Sem borda arredondada
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context); // Voltar ao dashboard
                                  },
                                  child: const Text(
                                    'Return to Dashboard',
                                    style: TextStyle(color: Colors.white), // Letras brancas
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}







class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  Map<int, int?> _selectedAnswers = {}; // Track answers for each question
  Set<int> _unansweredQuestions = {};  // Track unanswered questions to retain the border

final List<Map<String, dynamic>> _questions = [
  {
    "question": "Qual é o principal músculo responsável pela mastigação?",
    "options": ["Temporal", "Masseter", "Orbicular da boca", "Esternocleidomastoideo", "Buccinador"],
  },
  {
    "question": "Qual é o nervo craniano responsável pela inervação da musculatura facial?",
    "options": ["Nervo trigêmeo (V)", "Nervo glossofaríngeo (IX)", "Nervo facial (VII)", "Nervo hipoglosso (XII)", "Nervo vago (X)"],
  },
  {
    "question": "Qual estrutura óssea forma a maior parte do palato duro?",
    "options": ["Osso palatino", "Osso zigomático", "Osso maxilar", "Osso esfenoide", "Osso nasal"],
  },
  {
    "question": "O osso hióide está ligado diretamente a qual outro osso?",
    "options": ["Mandíbula", "Esterno", "Nenhum osso", "Clavícula", "Coluna vertebral"],
  },
  {
    "question": "Qual artéria é a principal fonte de irrigação sanguínea para o cérebro?",
    "options": ["Artéria carótida externa", "Artéria vertebral", "Artéria subclávia", "Artéria carótida interna", "Artéria facial"],
  },
  {
    "question": "Qual músculo eleva o lábio superior?",
    "options": ["Zigomático maior", "Zigomático menor", "Levantador do lábio superior", "Depressor do ângulo da boca", "Orbicular da boca"],
  },
  {
    "question": "Qual é a maior glândula salivar?",
    "options": ["Sublingual", "Parótida", "Submandibular", "Lacrimal", "Glândula tireoide"],
  },
  {
    "question": "O nervo trigêmeo é responsável pela sensibilidade de qual parte do corpo?",
    "options": ["Pescoço", "Couro cabeludo", "Face", "Laringe", "Ombro"],
  },
  {
    "question": "A veia jugular externa drena sangue de qual estrutura?",
    "options": ["Encéfalo", "Face e couro cabeludo", "Pescoço profundo", "Coração", "Cavidade nasal"],
  },
  {
    "question": "Qual músculo é responsável pela flexão do pescoço?",
    "options": ["Trapézio", "Platisma", "Esternocleidomastoideo", "Escaleno", "Levantador da escápula"],
  },
  {
    "question": "Qual nervo craniano é responsável pela visão?",
    "options": ["Nervo olfatório (I)", "Nervo óptico (II)", "Nervo oculomotor (III)", "Nervo trigêmeo (V)", "Nervo troclear (IV)"],
  },
  {
    "question": "Qual osso contém o processo estilóide?",
    "options": ["Osso maxilar", "Osso temporal", "Osso occipital", "Osso zigomático", "Osso parietal"],
  },
  {
    "question": "Qual músculo é responsável pelo fechamento das pálpebras?",
    "options": ["Orbicular da boca", "Orbicular do olho", "Levantador do lábio superior", "Platisma", "Buccinador"],
  },
  {
    "question": "Qual estrutura conecta a faringe à orelha média?",
    "options": ["Trompa de Eustáquio", "Cóclea", "Labirinto", "Tímpano", "Canal semicircular"],
  },
  {
    "question": "Qual nervo craniano controla os músculos da língua?",
    "options": ["Nervo facial (VII)", "Nervo glossofaríngeo (IX)", "Nervo hipoglosso (XII)", "Nervo vago (X)", "Nervo trigêmeo (V)"],
  },
  {
    "question": "Qual osso forma o queixo?",
    "options": ["Osso zigomático", "Osso maxilar", "Osso palatino", "Osso mandibular", "Osso esfenoide"],
  },
  {
    "question": "O nervo facial passa por qual forame?",
    "options": ["Forame redondo", "Forame estilomastoideo", "Forame oval", "Forame jugular", "Forame espinhoso"],
  },
  {
    "question": "Qual artéria irriga a face?",
    "options": ["Artéria facial", "Artéria maxilar", "Artéria subclávia", "Artéria lingual", "Artéria carótida interna"],
  },
  {
    "question": "Qual estrutura marca o limite entre o cérebro e a medula espinhal?",
    "options": ["Córtex cerebral", "Corpo caloso", "Medula oblonga", "Tálamo", "Ponte"],
  },
  {
    "question": "Qual é o principal músculo envolvido na abertura da boca?",
    "options": ["Pterigoideo lateral", "Masseter", "Temporal", "Platisma", "Esternocleidomastoideo"],
  },
];

Timer? _timer;
Duration _duration = const Duration(minutes: 20);


  @override
  void initState() {
    super.initState();
    // Mark the first question as unanswered when the app starts
    _unansweredQuestions.add(0);
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_duration.inSeconds > 0) {
          _duration = _duration - const Duration(seconds: 1);
        } else {
          _timer?.cancel();
          _duration = const Duration(minutes: 20); // Reset the timer to the initial value
          _startTimer(); // Restart the timer
        }
      });
    });
  }

  void _selectQuestion(int index) {
    setState(() {
      _currentQuestionIndex = index;
      // Keep track of unanswered questions by adding it to the set
      if (!_selectedAnswers.containsKey(index)) {
        _unansweredQuestions.add(index);
      }
    });
  }

  void _answerQuestion(int answerIndex) {
    setState(() {
      _selectedAnswers[_currentQuestionIndex] = answerIndex; // Store the selected answer
      _unansweredQuestions.remove(_currentQuestionIndex); // Remove from unanswered once answered
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[800], // Light grey background
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Student | 118244",
                  style: TextStyle(
                    color: Colors.grey[600], // Lighter grey color for text
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8), // Add space between elements
                const Text(
                  "MEDICINA DENTÁRIA",
                  style: TextStyle(
                    color: Colors.white, // White text for "TAYLOR CLAY"
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 50), // Top and bottom: 10, Left and right: 20
                  child: const Text(
                    "END OF YEAR EXAM",
                    style: TextStyle(
                      color: Colors.white, // Black text color for center title
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                )

              ],
            ),
            // Centered "END OF YEAR EXAM"

            // Right-aligned timer with clock icon
            Row(
              children: [
                Icon(
                  Icons.access_time, // Clock icon
                  color: Colors.white,
                ),
                SizedBox(width: 4), // Add spacing between icon and timer
                Text(
                  "${_duration.inHours.toString().padLeft(2, '0')}:${(_duration.inMinutes % 60).toString().padLeft(2, '0')}:${(_duration.inSeconds % 60).toString().padLeft(2, '0')}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Row(
        children: [
          Container(
            width: 80,
            color: Colors.grey[200],
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8), // Add some spacing around the text
                  child: Text(
                    "FILTER  >",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // The list of question numbers
                Expanded(
                  child: ListView.builder(
                    itemCount: _questions.length,
                    itemBuilder: (context, index) {
                      final isSelected = _currentQuestionIndex == index;
                      final isAnswered = _selectedAnswers.containsKey(index);
                      final isUnanswered = _unansweredQuestions.contains(index); // Track unanswered questions

                      return ListTile(
                        title: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Outer circle (always visible)
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: (isSelected || isUnanswered)
                                    ? Border.all(
                                  color: Colors.blue,
                                  width: 2,
                                )
                                    : null,
                              ),
                            ),
                            // Filled inner circle (only for answered questions)
                            if (isAnswered)
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            // Unanswered question (transparent center with blue border)
                            if (!isAnswered && isSelected)
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(
                                    color: Colors.blue, // Blue for selected question number
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            // Question number text (on top of all layers for non-selected/unanswered questions)
                            if (!isAnswered && !isSelected)
                              Text(
                                "${index + 1}",
                                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                          ],
                        ),
                        onTap: () => _selectQuestion(index),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                child: Column(

                  children: [
                    // Question and answer section (scrollable)
                    Expanded(
                      child: SingleChildScrollView(  // Make only this part scrollable
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Question # ${_currentQuestionIndex + 1} of ${_questions.length}   🡩",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 50), // Top and bottom: 10, Left and right: 20
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "FLAG QUESTION",
                                      style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )

                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              _questions[_currentQuestionIndex]["question"],
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            // Dynamic range of answers
                            Text(
                              "Answers A - ${String.fromCharCode(65 + (_questions[_currentQuestionIndex]["options"].length as int) - 1)}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700],
                              ),
                            ),
                            const SizedBox(height: 20),
                            ..._questions[_currentQuestionIndex]["options"]
                                .asMap()
                                .entries
                                .map<Widget>((entry) {
                              final optionIndex = entry.key; // Get the option index
                              final optionText = entry.value; // Get the option text
                              final optionLabel = String.fromCharCode(65 + (optionIndex as int)); // Convert index to A, B, C...

                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20), // Increased padding
                                    backgroundColor: Colors.grey[50], // Light background color for the answer button
                                    foregroundColor: Colors.black, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50), // 50% border radius for pill shape
                                    ),
                                    side: BorderSide(
                                      color: _selectedAnswers[_currentQuestionIndex] == optionIndex ? Colors.blue : Colors.transparent, // Blue border for selected answer
                                      width: 2,
                                    ),
                                    elevation: 0, // Remove shadow
                                  ),
                                  onPressed: () => _answerQuestion(optionIndex), // Update selected answer
                                  child: Row(
                                    children: [
                                      Text(
                                        "$optionLabel.",
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(child: Text(optionText)),
                                      // Show the eye icon for unselected options, tick for selected ones
                                      Icon(
                                        _selectedAnswers[_currentQuestionIndex] == optionIndex
                                            ? Icons.check
                                            : Icons.visibility,
                                        color: _selectedAnswers[_currentQuestionIndex] == optionIndex
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    ),
                    // Footer navigation and info (fixed at the bottom)
                    Container(
                      width: double.infinity,
                      child:Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Left-aligned text: "2 of 5 questions ; Version 4.3.2"
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${_currentQuestionIndex + 1} OF ${_questions.length} QUESTIONS",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25), // Top and bottom: 10, Left and right: 20
                                  child: Text(
                                    "Version 4.3.2",
                                    style: TextStyle(
                                      fontSize: 14,

                                      color: Colors.grey[700],
                                    ),
                                  ),
                                )// Small spacing between lines

                              ],
                            ),

                            // Right-aligned navigation buttons
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(120, 48),
                                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 35), // More padding
                                    backgroundColor: Colors.grey[900], // Light background color
                                    foregroundColor: Colors.white, // Text color
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, // 50% border radius for pill shape
                                    ),
                                  ),
                                  onPressed: _currentQuestionIndex > 0
                                      ? () {
                                    setState(() {
                                      _currentQuestionIndex--;
                                    });
                                  }
                                      : null,
                                  child: const Text("Previous"),
                                ),
                                const SizedBox(width: 16), // Add spacing between buttons
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(120, 48),
                                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32), // More padding
                                    backgroundColor: Colors.blue, // Blue background color
                                    foregroundColor: Colors.white, // White text color
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, // 50% border radius for pill shape
                                    ),
                                  ),
                                  onPressed: _currentQuestionIndex < _questions.length - 1
                                      ? () {
                                    setState(() {
                                      _currentQuestionIndex++;
                                    });
                                  }
                                      : () {
                                    // Action for "Finish"
                                    // Navigate to the Results Page or finish the quiz
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ResultsPage()),
                                    );
                                  },
                                  child: Text(
                                    _currentQuestionIndex == _questions.length - 1 ? "Finish" : "Next",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )


          ),
        ],
      ),
    );
  }
}