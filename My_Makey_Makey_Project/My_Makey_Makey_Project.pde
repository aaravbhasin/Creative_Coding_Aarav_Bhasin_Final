PImage img2;
int BallCount=19;
int scene = 1;
float[] Xs=new float[BallCount];
float[] Ys = new float[BallCount];
float X = 500;
float Y = 400;
PImage img;
int y;
float GameOver;
boolean up, down, left, right = false;
Timer timer = new Timer();

void setup() {
  size(800, 800, P2D);
  noCursor();
  size (800, 800, P2D);
    Ys[0]=100;
  Ys[1]=100;
  Ys[2]=100;
  Ys[3]=100;
  Ys[4]=100;
  img = loadImage("win.jpg");
  img.resize(800, 800);
  for (int i=0; i<BallCount; i++)
  {
    Ys[i]=random(10, 750);

    Ys[0]=-50;
    Xs[i]=random(0, 800);
  }
}
void draw() 
{
  if (scene == 1)
  {
    game();
  }
  if (scene==2)
  {
    background(img);
  }
}



void game()
{
  ellipse(50, 645, 60, 60);
  background(0);
  if (Y>200)
  {
    if (X<100)
    {
      if (Y<600)
      {
        scene = 2;
      }
    }
  }
  timer.display();
  if (scene == 2) {
    textSize(96);
    text("AHHHHHHHHHHHHHHHHHHHHHHH", 10, 30);
  }
  ellipse(X, Y, 30, 30);
  MoveCharacter();
  for (int i=0; i<BallCount; i++)
  {
    ellipse(Xs[i], Ys[i], 20, 20);
    Ys[i]=Ys[i]-0;
    Xs[i]=Xs[i]+10;
    if (Xs[i]>width)
    {
      Xs[i]=0;
      Ys[i]=random(0, 800);
    }
    if (dist(X, Y, Xs[i], Ys[i])<20)
    {
      background(255, 0, 0);
      X=790;
      Y=400;
    }
    if (Ys[i]>height+20)
    {
      Ys[i]=-50;
    }
    if (dist(X, Y, Xs[5], Ys[5])<20)
    {
      background(0, 255, 0);
    }
  }
  rect(0, 200, 100, 400);
  if (scene==2) 
  {
  }
}




void keyPressed()
{
  if (key == 'a')
  {
    left=true;
  }
  if (key == 'w')
  {
    up = true;
  }
  if (key == 'd')
  {
    right = true;
  }
  if (key == 's')
  {
    down = true;
  }
}
void keyReleased()
{
  if (key == 'a')
  {
    left=false;
  }
  if (key == 'w')
  {
    up = false;
  }
  if (key == 'd')
  {
    right = false;
  }
  if (key == 's')
  {
    down = false;
  }
}
void MoveCharacter()
{
  if (up)
  {
    Y-=6;
  }
  if (down)
  {
    Y+=6;
  }
  if (right)
  {
    X+=6;
  }

  if (left)
  {
    X-=6;
    ;
  }
}
