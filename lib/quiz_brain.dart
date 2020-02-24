
import 'questions.dart';

class QuizBrain
{
  int questionNumber = 0;

  List<Question> questionBank = [
    Question(queTxt : 'Some cats are actually allergic to humans', queAns: true),
    Question(queTxt: 'You can lead a cow down stairs but not up stairs.', queAns: false),
    Question(queTxt: 'Approximately one quarter of human bones are in the feet.', queAns: true),
    Question(queTxt: 'A slug\'s blood is green.', queAns: true),
    Question(queTxt: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', queAns: true),
    Question(queTxt: 'It is illegal to pee in the Ocean in Portugal.', queAns: true),
    Question(queTxt: 'No piece of square dry paper can be folded in half more than 7 times.', queAns: false),
    Question(queTxt: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        queAns: true),
    Question(queTxt: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', queAns: false),
    Question(queTxt: 'The total surface area of two human lungs is approximately 70 square metres.', queAns: true),
    Question(queTxt: 'Google was originally called \"Backrub\".', queAns: true),
    Question(queTxt: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', queAns: true),
    Question(queTxt: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        queAns: true),
  ];

  void nextQuestion()
  {
    if(questionNumber < questionBank.length - 1)
      {
        questionNumber++;
      }
  }

  String getQuestionText()
  {
    return questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer()
  {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished()
  {
    if(questionNumber == questionBank.length - 1)
      {
        return true;
      }
    return false;
  }

  void reset()
  {
    questionNumber = 0;
  }
}