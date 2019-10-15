void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  noStroke();
  fill(200);
  rect(100,430,280,460);
  int trying = 0;
  for(int y=50; y<=400; y+=100)
  {
    for(int x=50; x<=400; x+=100)
    {
      Die new1 = new Die(x,y);
         new1.show();
      trying = trying + new1.ran;
    }
  }
  text("total: " + trying,200,450);
  
}
void mousePressed()
{
  redraw();
  
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY; 
  int ran;
  
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    ran = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    
  }
 
  void show()
  {
    //your code here
    noStroke();
      fill(255);
      rect(myX,myY,50,50);
      fill(0);
    if (ran == 1)
    {
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if (ran == 2)
    {
      ellipse(myX + 7,myY + 7,10,10);
      ellipse(myX + 42, myY + 42, 10,10);
    }
    else if (ran == 3)
    {
      ellipse(myX + 7,myY + 7,10,10);
      ellipse(myX + 42, myY + 42, 10,10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
    else if (ran == 4)
    {
      ellipse(myX +7,myY +7,10,10);
      ellipse(myX + 7, myY + 42,10,10);
      ellipse(myX + 42, myY + 42, 10,10);
      ellipse(myX + 42, myY + 7, 10,10);
    }
    else if (ran == 5)
    {
      ellipse(myX + 7,myY +7,10,10);
      ellipse(myX + 42, myY + 42, 10,10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 7, myY + 42,10,10);
      ellipse(myX + 42, myY + 7, 10,10);
    }
    else 
    {
      ellipse(myX +7, myY + 7,10,10);
      ellipse(myX + 7, myY + 42,10,10);
      ellipse(myX + 7, myY + 25, 10,10);
      ellipse(myX + 42, myY + 42, 10,10);
      ellipse(myX + 42, myY + 7, 10,10);
      ellipse(myX + 42, myY + 25, 10,10);
    }

  }
}




