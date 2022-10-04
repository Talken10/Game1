int nMover = 100; 
Mover[] m = new Mover[nMover]; 
boolean clicked = false;
color col = color(0,200,0);
int living = nMover;

void setup()
{
size(800,800); 
surface.setTitle ("muchy munchy");

//fullScreen();

 for (int i = 0; i < m.length; i = i + 1) //loop that will repeat 10 times
 {
   m[i] = new Mover(); //creates movers
   
 }
}

void drawMe()
{

  noStroke();
  fill(255,0,100,100);
  circle(mouseX,mouseY,30);

}


void draw()
{
  
noStroke();
fill(0,0,0,50);
rect(0,0, width, height);

 for (int i = 0; i < m.length; i = i + 1) 
 {
   m[i].update(); //updates the position
   m[i].check(); //activates check
   m[i].display(); //displays the object on the screen
 }
 
  //drawMe();
  hud();
 
}



void mousePressed()
{
 
  for (int i = 0; i < m.length; i = i + 1) //send mouse cordinates to the circles in a cycle
   {
    m[i].bite(); 
   
  } 
}


void hud()
{
translate(width/2,10);

 fill(color(200,200,200,80));
 noStroke();
 rect(-50,0,101,65);

 fill(255);
 textAlign(CENTER);
 textSize(50);
 text(living,0,50);
 
 translate(-nMover/2,0);
 
 noStroke();
 fill(col);
 rect(0,0,living,10);
 
 noFill();
 strokeWeight(1);
 stroke(color(255));
 rect(0,0,nMover,10);
 

}
