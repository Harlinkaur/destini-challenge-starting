//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  List<Story> _storyData = [
    Story(
        storyTitle:
            'In a foreign land, I see amazing fast cars around me all the time. Being a teenager college student, I wish I could get one too! Well, my father is fairly rich and I ask him to get me one. He said to me I would get one if do well in the upcoming semester.',
        choice1: 'Wow! Thanks, Dad I will give my best!',
        choice2: 'Hmm. No, I am fine.'),
    Story(
        storyTitle:
            'My best friend gets a flashing new BMW. No wonder, his father is quite rich, but he doesn’t deserve it. Well, I should really focus on myself.',
        choice1: 'I call my papa if his offer is still valid :)',
        choice2: 'Next Party transportation, BMW.'),
    Story(
        storyTitle:
            'Day and night study!. Drop cricket club, no Friday night movie, and focus Focus Focus. I get awesome grades and my father gets a GTI delivered to my dormitory! I take it out for a ride. Days pass, the car becomes a burden to handle. Insurance, taking friends to parties, study pressure piling on. Meanwhile, found some Singhs wanting to go to Sangat.',
        choice1: 'Wow! I remember my junior Khalsa camp days. Can I help?',
        choice2: 'Hmm. No time, maybe when I am 60…. :-/'),
    Story(
        storyTitle:
            'Next 3 parties, we were the strangest people with a BMW :-/ Well, my friend goes out with someone on a date, I am feeling lonely now. Got a call from buddy Bhujangi Singh next door, there seems to be a new Gurdwara in Roanoke, that they want a website for. Hmm.. http://sttm.co/s/5533/60321',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'I continue my life by involving myself in more worldly affairs and my intellect, wondering why I am climbing an endless ladder. One early morning in December: “Is someone playing dholki on the streets?” http://sttm.co/s/2529/28631',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'I get blessed with Sadh Sangat, explore the path of true religion (Shabad Guru), and give myself to Guru Panj Pyaare in front of Sahib Sri Guru Granth Sahib. The rest of life goes naturally. http://sttm.co/s/41000/207391',
        choice1: 'Restart',
        choice2: '')
  ];

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting 'Rename Symbol F2' to make the change across all the places where it's used.
  int _storyNumber = 0;
//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
