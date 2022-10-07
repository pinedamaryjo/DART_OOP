class Card{
  String suit;
  String value;
  
  String toString(){ 
    return value + " of " + suit;
  }
  Card(this.suit, this.value); 
}


class Deck {
  var deck = [];
  
  Deck() {
    resetDeck();
  }
  
  String getSuit(Card x) {return x.suit;}
  
  void resetDeck() {
    deck = [];
    
    var value = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"];
    var suit = ["Diamonds", "Hearts", "Clubs", "Spades"];
    
    for(var x in suit) {
      for(var y in value) {
        deck.add(new Card(x, y));
      }
    }
  }
  
  void printCards() {
    this.deck.forEach((x)=> 
      print("$x,")
    );
  }
  
  void shuffle() {
    this.deck.shuffle();
  }
  
  List cardsWithSuit(String suit) {
    return this.deck.where((x) => getSuit(x) == suit).toList();
  }
}

void main() {
  var x = new Deck();
  
  print("NEW DECK");
  x.resetDeck();
  x.printCards();
  
  print("\n\nSHUFFLING");
  x.shuffle();
  x.printCards();
  
  print("\n\nCARDS THAT ARE CLUBS");
  print(x.cardsWithSuit("Clubs"));
}