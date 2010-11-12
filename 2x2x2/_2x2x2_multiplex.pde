int level_pin_1 = 2;
int level_pin_2 = 3;

int l1 = 4;
int l2 = 5;
int l3 = 6;
int l4 = 7;

int counter = 0;

void setup() {
  pinMode(level_pin_1, OUTPUT);
  pinMode(level_pin_2, OUTPUT);
  pinMode(l1, OUTPUT);
  pinMode(l2, OUTPUT);
  pinMode(l3, OUTPUT);
  pinMode(l4, OUTPUT);
}

void loop() {
  

    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(3000);
    digitalWrite(level_pin_1, LOW);
    delay(3000);

  
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(3000);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(3000);
    
  for (int j=0; j<10; j++) {
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(300);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(300);
  }

  for (int j=0; j<20; j++) {
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(200);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(200);
  }
  
  for (int j=0; j<30; j++) {
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(100);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(100);
  }
  
  for (int j=0; j<40; j++) {
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(50);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(50);
  }
  
  for (int j=0; j<400; j++) {
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, HIGH);
    digitalWrite(l4, LOW);
  
    digitalWrite(level_pin_1, HIGH);
    digitalWrite(level_pin_2, LOW);
  
    delay(10);
    digitalWrite(l1, LOW);
    digitalWrite(l2, LOW);
    digitalWrite(l3, LOW);
    digitalWrite(l4, HIGH);
  
    digitalWrite(level_pin_1, LOW);
    digitalWrite(level_pin_2, HIGH);
    delay(10);
  }
  
}
