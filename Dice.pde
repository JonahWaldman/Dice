void setup() {
  size(400, 400);
}
{
  noLoop();
}
void draw()
{
  int sumDice = 0;
   background(#92F5F2);
 
  for (int y=0; y<350; y+=50)
  {
    for (int x=0; x<400; x+=50)
    {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      sumDice = sumDice + bob.numDots;
      fill(0);
    }
    
  }
  text("Number of Dots = " + sumDice, 250, 380);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    
    myX = x;
    myY = y;
  }
  void roll()
  {
   numDots = (int) (Math.random()*8)-1;
  }
  void show()
  {
   
    int siz = 50;
    for (int i = 0; i < 400; i+=50)
    {
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      rect(myX, myY, siz, siz);
      fill(0);
      ellipse(myX, myY, 5, 5); //Not a dot on die, just for looks!

fill(255);
      if (numDots<=1){ //1 dot
        ellipse(myX-25, myY-25, 10, 10);
      } else if (numDots<=2){ //2 dots
        ellipse(myX-42, myY-42, 10, 10);
      ellipse(myX-8, myY-8, 10, 10);
      } else if (numDots<=3){ //2 dots
        ellipse(myX-42, myY-42, 10, 10);
      ellipse(myX-8, myY-8, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      } else if (numDots<=4){ //2 dots
        ellipse(myX-42, myY-42, 10, 10);
      ellipse(myX-8, myY-8, 10, 10);
       ellipse(myX-42, myY-8, 10, 10);
      ellipse(myX-8, myY-42, 10, 10);
      } else if (numDots<=5){ //2 dots
        ellipse(myX-42, myY-42, 10, 10);
      ellipse(myX-8, myY-8, 10, 10);
       ellipse(myX-42, myY-8, 10, 10);
      ellipse(myX-8, myY-42, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      } else if (numDots<=6){ //2 dots
        ellipse(myX-42, myY-42, 10, 10);
      ellipse(myX-8, myY-8, 10, 10);
       ellipse(myX-42, myY-8, 10, 10);
      ellipse(myX-8, myY-42, 10, 10);
      ellipse(myX-42, myY-25, 10, 10);
      ellipse(myX-8, myY-25, 10, 10);
      }
      //fill(0);
      //text(numDots, myX, 90);
      
    }
  }
}
