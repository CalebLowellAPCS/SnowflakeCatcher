void setup()
{
  size(512, 512);
  //your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x, y;
  boolean inMoving;
    //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*512);
    y = (int)(Math.random()*512);
    isMoving = true;

    
    //class member variable initializations
  }
  void show()
  {
    fill(255, 255, 255);
    ellipse(x, y, 5, 5);
    //your code here
  }
  void lookDown()
  {
    if(y >= 0 && y <= 512 && (get(x, y + 4) != color(0, 0, 0))){
      isMoving = false;
    }
    else {
      inMoving = true;
    }
    //your code here
  }
  void erase()
  {
    fill(0, 0, 0);
    ellipse(x, y, 7, 7);

    //your code here
  }
  void move()
  {
    if(isMoving == true){
      y = y + 1;
    }
    //your code here
  }
  void wrap()
  {
    if(y > 512){
      y = 0;
      x = (int)(Math.random()*512);
    }
    //your code here
  }
}


