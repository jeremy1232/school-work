class bird {
  float x;
  float y;
  float speed;
  float gravity = 0.1;



  bird () {
    x = width/2;
    y = height/2 ;
  }

  void display() {
    //flappy bird body
    fill(#FAD605);
    strokeWeight(3);
    stroke(0);
    ellipse(x, y, 100, 85);
    //flappy bird wing
    fill(#F7EAA0);
    ellipse(x-45, y, 60, 45);
    //flappy bird eye
    fill(#FFFFFF);
    ellipse(x+25, y-10, 45, 50);
    fill(#000000);
    ellipse(x+35, y-10, 10, 15);
    //flappy bird beak
    fill(#FA660A);
    ellipse(x+35, y+20, 60, 28);
    fill(#000000);
    strokeWeight(5);
    line(x+30, y+20, x+65, y+20);
  }
  void move() {
    y = y + speed;
    speed = speed + gravity;
    if (y > height) {
      speed = speed * -0.5;
      y = height;
    }
    if ( keyPressed && key == ' ') {
      speed = speed + -0.5;
      
    }
  }
}
