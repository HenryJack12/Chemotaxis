Balloon[] bob;
void setup()   
{     
  int x;
  int y;
  size(800, 800);
  frameRate(45);
  bob = new Balloon[20];
  for(int i = 0; i < bob.length; i ++) {
    x = (int) (Math.random() * 200) - 100;
    y = (int) (Math.random() * 200) - 400;
    bob[i] = new Balloon(x, y);
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
  int mySpecialX, mySpecialY, randX, randY, myX, myY;
  Balloon(int x, int y) {
    mySpecialX = x;
    mySpecialY = y;
  }
  void walk(){
    randY = (int) (Math.random() * 6) - 3;
    randX = (int) (Math.random() * 12) - 6;
    myX = pmouseX + mySpecialX + randX;
    myY = pmouseY + mySpecialY + randY;
}
void show(){
  ellipse(myX, myY, 40, 60);
  line(myX, myY + 30, mouseX, mouseY); 
  fill(mouseX, mouseY - 300, 0);
}   
}  
