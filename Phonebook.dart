class Contact {
  String fname;
  String lname;
  String number;
  String address;
  
  Contact(this.fname, this.lname, this.number, this.address);
  String toString() {
    return "Name: " + fname + " " + lname + " | Number: " + number + " | " + address;
  }
}

class Phonebook {
  List<Contact> phonebook = [];
  
  Phonebook() {
    populatePhonebook();
  }
  
  void populatePhonebook() {
    phonebook = [];
    phonebook.add(new Contact( "Luke", "Colina", "09191231231", "Lapu-Lapu" ));
    phonebook.add(new Contact( "Mary", "Colina", "09232323231", "Consolacion" ));
    phonebook.add(new Contact( "Hans", "Cesa", "09271721271", "Mandaue" ));
    phonebook.add(new Contact( "Shawn", "Cinco", "09120219510", "Mandaue" ));
    phonebook.add(new Contact( "Inie", "Saturday", "09518501058", "Mandaue" ));
  }
  
  void displayPhonebook() {
    this.phonebook.forEach((contact) => {
      print(contact.toString()) 
    });
  }
  
  void addContact(String fname, String lname, String number, String address) {
    this.phonebook.add(new Contact(fname, lname, number, address));
  }
  
  void removeContact(String number) {
    this.phonebook = this.phonebook.where((contact) => number != contact.number).toList();
  }
  
  void searchContact(String number) {
    var filter = this.phonebook.where((contact) => number == contact.number).toList();
    print((filter.length > 0) 
      ? filter[0].toString()
      : "Contact not found!");
  }
}


void main() {
  print("DISPLAYING PHONEBOOK");
  var x = new Phonebook();
  x.displayPhonebook();
  
  print("\n\nADDING NEW CONTACT");
  x.addContact("Kris", "Ponla", "09571751882", "Cebu");
  x.displayPhonebook();
  
  print("\n\nREMOVING CONTACT USING NUMBER");
  x.removeContact("09120219510");
  x.displayPhonebook();
  
  print("\n\nSEARCHING AND DISPLAYING CONTACT");
  x.searchContact("09571751882");
  x.searchContact("09120219510");
}