bird mybird;


void setup(){
  size (300,500);
  mybird = new bird();
}

void draw (){
  background (1);
  mybird.display();
  mybird.move();
}
