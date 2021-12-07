ArrayList <Star> ss = new ArrayList <Star> ();
int nC = 500;

void setup() {
  size(500, 500);
  for (int i = 0; i < nC; i++) {
    ss.add(new Star());
  }
  ss.add((int)(Math.random()*nC), new Ship());
  ss.add((int)(Math.random()*nC), new Ship());
}

void draw() {
  background(0);
  for (Star c: ss) {
    c.update();
    c.show();
  }
}

class Star {
  double myX, myY;
  double mySpeed, myAngle;
  int sz, cl;
  Star() {
    myX = width/2;
    myY = height/2;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
    sz  = 20;
    cl = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
  }
  void show() {
    fill(cl);
    ellipse((float)myX, (float)myY, (float)sz, (float)sz);
  }
  void update() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
}

class Ship extends Star{
  Ship() {
    sz = 50;
    cl = color(255, 255, 255);
    mySpeed = 2;
  }
}
