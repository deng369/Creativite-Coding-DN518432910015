int redPin = 3;
int greenPin = 4;
int bluePin = 5;
int yellowPin = 6;
int writePin = 7;

int c = 0;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);  
  pinMode(redPin,OUTPUT);
  pinMode(greenPin,OUTPUT);
  pinMode(bluePin,OUTPUT);
pinMode(yellowPin,OUTPUT);
  pinMode(writePin,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
if(Serial.available());
  c = Serial.read();
  if (c== 97)  
  {
    digitalWrite(redPin,HIGH);   
    delay(1000);
    digitalWrite(redPin,LOW); 
  }
  if (c== 98)  
  {
    digitalWrite(yellowPin,HIGH);   
    delay(1000);
    digitalWrite(yellowPin,LOW);    
  }
  if (c == 99)  
  {
    digitalWrite(bluePin,HIGH);   
    delay(1000);
    digitalWrite(bluePin,LOW);
  }
   if (c == 100)  
  {
    digitalWrite(greenPin,HIGH);   
    delay(1000);
    digitalWrite(greenPin,LOW);
  }
   if (c == 101)  
  {
    digitalWrite(redPin,HIGH);
    digitalWrite(yellowPin,HIGH);   
    delay(1000);
    digitalWrite(redPin,LOW);
    digitalWrite(yellowPin,LOW);
  }
    if (c == 102)  
  {
    digitalWrite(redPin,HIGH);
    digitalWrite(writePin,HIGH);   
    delay(1000);
    digitalWrite(redPin,LOW);
    digitalWrite(writePin,LOW);
  }
}
