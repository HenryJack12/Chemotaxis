Balloon[] bob;
void setup()   
{     
  size(800, 800);
  frameRate(60);
  bob = new Balloon[10];
  for(int i = 0; i < bob.length; i ++) {
    bob[i] = new Balloon();
  }
}
void draw()   
{    
  background(193, 179, 215);
  for(int i = 0; i < bob.length; i ++) {
    bob[i].show();
    bob[i].walk();
  }   
}  
class Balloon    
{     
  int myX, myY, rand;
  Balloon() {
    myX = myY = (int) (Math.random() * 600);
    rand = (int) (Math.random() * 256);
  }
  void walk(){
  myX = (mouseX + myX) / 2 + (int) (Math.random() * 150) - 75;
  myY = (mouseY + myY) / 2 + (int) (Math.random() * 150) - 200;
}
void show(){
  ellipse(myX, myY, 40, 60);
  line(myX, myY + 30, mouseX, mouseY); 
  fill(mouseX, mouseY - 300, 0);
}   
}  