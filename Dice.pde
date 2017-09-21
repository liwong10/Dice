Die maurice;
int sum=0;
void setup()
{
  size(500,500);
  background(255,210,220);
  noLoop();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
   myX=x;
   myY=y;
  }
  
  void roll()
  {
    int dots=(int) (Math.random()*6+1);
    noStroke();
    fill((int)(Math.random()*105),(int)(Math.random()*105),(int)(Math.random()*105));
      if (dots==1)
      {
        ellipse(myX+27,myY+27,10,10);
        sum=sum+dots;
      }
     else if (dots==2)
       {
         ellipse(myX+11,myY+11,10,10);
         ellipse(myX+44,myY+44,10,10);
         sum=sum+dots;
       }
      else if (dots==3)
      {
      ellipse(myX+11,myY+11,10,10);
      ellipse(myX+44,myY+44,10,10);
      ellipse(myX+27,myY+27,10,10);
      sum=sum+dots;
      }
      else if (dots==4)
        {
      ellipse(myX+11,myY+11,10,10);
      ellipse(myX+44,myY+44,10,10);
      ellipse(myX+11,myY+44,10,10);
      ellipse(myX+44,myY+11,10,10);
      sum=sum+dots;
      }
      else if (dots==5)
        {
      ellipse(myX+27,myY+27,10,10);
      ellipse(myX+11,myY+11,10,10);
      ellipse(myX+44,myY+44,10,10);
      ellipse(myX+11,myY+44,10,10);
      ellipse(myX+44,myY+11,10,10);
      sum=sum+dots;
      }
      else if (dots==6)
      {
      ellipse(myX+13,myY+28,10,10);
      ellipse(myX+41,myY+28,10,10);
      ellipse(myX+13,myY+11,10,10);
      ellipse(myX+41,myY+44,10,10);
      ellipse(myX+13,myY+44,10,10);
      ellipse(myX+41,myY+11,10,10);
      sum=sum+dots;
      }

      
    //your code here
  }
  
  void show()
  {
    stroke(155,5,110);
    fill( (int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
    rect(myX,myY,55,55,5);
    roll();
    
    //your code here
  }
}
void mousePressed()
{
  redraw();
}
void draw()
{
  sum=0;
  background(255,210,220);
  int x,y;
  for (y=50; y<=400; y+=80)
    {
      for(x=50 ;x<=400 ;x+=80)
      {
  maurice = new Die(x,y);
  maurice.show();
      }
    }
    textSize(30);
    text("Sum of all rolls: "+ sum,100,480);    

   
  //your code here
}