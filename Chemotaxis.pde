Bac[] dots;
void setup() {
  size(300, 300);
  background(0);
  dots = new Bac [10];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Bac();
  }
}
void draw() {
  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].show();
  }
}
class Bac {
  int myX, myY, myColor;
  Bac() {
    int x=150+(int)(Math.random()*50);
    int y=150+(int)(Math.random()*50);
    myX=x;
    myY=y;
    myColor=color(170,150,200);
  }
  void move() {
    if(mouseX>myX)
      myX=myX+(int)(Math.random()*4)-1;
    else
      myX=myX+(int)(Math.random()*4)-2;
    if(mouseY>myY)
      myY=myY+(int)(Math.random()*4)-1;
    else
      myY=myY+(int)(Math.random()*4)-2;
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
}
