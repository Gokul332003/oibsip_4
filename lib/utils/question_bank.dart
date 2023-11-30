class QuestionBank {
  static final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Berlin', 'Madrid', 'Paris', 'Rome'],
      'correctAnswer': 'Paris',
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      'correctAnswer': 'Mars',
    },
    {
      'question': 'What is the largest mammal?',
      'options': ['Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus'],
      'correctAnswer': 'Blue Whale',
    },
    {
      'question': 'In which year did the Titanic sink?',
      'options': ['1905', '1912', '1920', '1931'],
      'correctAnswer': '1912',
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'options': ['Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain'],
      'correctAnswer': 'William Shakespeare',
    },
    {
      'question': 'What is the currency of Japan?',
      'options': ['Yuan', 'Won', 'Yen', 'Ringgit'],
      'correctAnswer': 'Yen',
    },
    {
      'question': 'Which country is known as the Land of the Rising Sun?',
      'options': ['China', 'Japan', 'South Korea', 'Vietnam'],
      'correctAnswer': 'Japan',
    },
    {
      'question': 'Who painted the Mona Lisa?',
      'options': ['Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso', 'Claude Monet'],
      'correctAnswer': 'Leonardo da Vinci',
    },
    {
      'question': 'What is the speed of light?',
      'options': ['299,792 kilometers per second', '150,000 kilometers per second', '450,000 kilometers per second', '600,000 kilometers per second'],
      'correctAnswer': '299,792 kilometers per second',
    },
    {
      'question': 'Which country is known as the Land of the Thunder Dragon?',
      'options': ['Nepal', 'Bhutan', 'Tibet', 'Mongolia'],
      'correctAnswer': 'Bhutan',
    },
  ];

  static Map<String, dynamic> getQuestion(int index) {
    if (index >= 0 && index < questions.length) {
      return questions[index];
    }
    return {};
  }

  static int getTotalQuestions() {
    return questions.length;
  }
}
