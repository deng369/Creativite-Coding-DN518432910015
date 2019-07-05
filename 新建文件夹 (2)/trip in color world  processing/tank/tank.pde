

int x=300, y=200;
 int speed=8;

 class Tank
 {
   Tank()
   {
   }
   void DisplayTank(int px, int py,char direction)
   {
      background(0,153,204);
      fill(255,255,0);
      noStroke();
   rect(800,700,100,100);
   fill(0,153,204);
   rect(825,750,50,50);
   fill(0,153,204);
   noStroke();
   rect(820,700,20,20);
   rect(860,700,20,20);
   
   fill(255,0,0);
   rect(100,700,100,100);
   rect(220,700,10,100);
    fill(0,153,204);
   rect(115,750,30,50);
    rect(155,750,15,15);
   fill(0,153,204);
   noStroke();
   rect(120,700,20,20);
   rect(160,700,20,20);
   
   fill(0,0,255);
   rect(450,850,100,100);
    fill(0,153,204);
   rect(485,900,30,50);
   fill(0,153,204);
   noStroke();
   rect(470,850,20,20);
   rect(510,850,20,20);
   
   
   
   
   fill(0,255,0);
   rect(450,100,100,100);
   rect(460,290,15,120);
 triangle(467,260,430,350,500,350);
   rect(500,290,15,120);
 triangle(507,260,470,350,540,350);
    fill(0,153,204);
   rect(460,150,30,50);
   rect(500,150,15,15);
 rect(520,150,15,15);
  rect(500,170,15,15);
   rect(520,170,15,15);
   fill(0,153,204);
   noStroke();
   rect(470,100,20,20);
   rect(510,100,20,20);
   
   
   fill(255,165,0);
   rect(450,500,100,100);
   ellipse(430,480,15,15);
     ellipse(450,480,15,15);
       ellipse(460,480,15,15);
         ellipse(430,460,15,15);
           ellipse(410,430,15,15);
            
      ellipse(450,460,15,15);       
    fill(0,153,204); 
    ellipse(500,550,30,60);
 
   
   fill(255,192,203);
   rect(100,100,100,100);
   rect(123,310,50,80);
     rect(95,270,110,40);
   fill(0,153,204);
   rect(135,150,30,50);
   rect(132,310,30,30);
   fill(0,153,204);
   noStroke();
   rect(120,100,20,20);
   rect(160,100,20,20);
   rect(120,270,20,20);
   rect(160,270,20,20);
   
     switch(direction)
     { 
       case'F' :
       fill(255,255,255);
       rect(px-10,py,20,40);
       rect(px+30,py,20,40);
       ellipse(px+20,py+20,20,25);
       
       rect(px+17,py-10,6,19);
       break;
       case'B':
       fill(255,255,255);
       rect(px-10,py,20,40);
       rect(px+30,py,20,40);
       ellipse(px+20,py+20,20,25);
       
       rect(px+17,py+30,6,19);
       break;
        case'L':
       fill(255,255,255);
       rect(px,py-10,40,20);
       rect(px,py+30,40,20);
       ellipse(px+20,py+20,25,20);
       
       rect(px-10,py+17,19,6);
       break;
        case'R':
       fill(255,255,255);
       rect(px,py-10,40,20);
       rect(px,py+30,40,20);
       ellipse(px+20,py+20,25,20);
       
       rect(px+30,py+17,19,6);
       break;
     default:
     break;
     }
   }
   void boundary(int px, int py)
   {
     if(px<10) x=10;
     if (py<10) y=10;
     if(px>(width-50)) x=width-50;
     if(py>(height-50)) y=height-50;
   }
 }
 Tank tank;
 import processing.serial.*;
Serial port;
 void setup()
   {
   size(1000,1000);
 port=new Serial(this,"COM3",9600); 
   tank= new Tank();
   tank.DisplayTank(x,y,'F');
 }
 void draw(){
 }
 void keyPressed( )
 {
   if(key == CODED)
   {
     switch(keyCode)
   {
     case UP:
     y=y-speed;
     tank.boundary(x,y);
     tank.DisplayTank(x,y,'F');
     break;
      case DOWN:
     y=y+speed;
     tank.boundary(x,y);
     tank.DisplayTank(x,y,'B');
     break;
      case LEFT:
     x=x-speed;
     tank.boundary(x,y);
     tank.DisplayTank(x,y,'L');
     break;
      case RIGHT:
     x=x+speed;
     tank.boundary(x,y);
     tank.DisplayTank(x,y,'R');
     break;
     default:
     break;
     
     
      }
    }
 }
 PImage img;
 int  mouseX=x;
 int  mouseY=y;
 void mouseClicked(){

  if((x-800)*(y-700)<=10000 && (x-800)*(y-700)>=0)
   {
   println("yellow");
   
   img= loadImage("b.jpg");
    image(img,300,300);
     port.write("b");
 }
  if((x-100)*(y-700)<=10000 && (x-100)*(y-700)>=0)
   {
   println("red");
   
   img= loadImage("a.jpg");
    image(img,300,300);
     port.write("a");
 }
   if((x-450)*(y-850)<=10000 && (x-450)*(y-850)>=0)
   {
   println("blue");
   
   img= loadImage("c.jpg");
    image(img,300,300);
     port.write("c");
 }
  if((x-450)*(y-100)<=10000 && (x-450)*(y-100)>=0)
   {
   println("green");
   
   img= loadImage("d.jpg");
    image(img,300,300);
     port.write("d");
 }
  if((x-450)*(y-500)<=10000 && (x-450)*(y-500)>=0)
   {
   println("orange");
   
   img= loadImage("e.jpg");
    image(img,300,300);
     port.write("e");
 }
   if((x-100)*(y-100)<=10000 && (x-100)*(y-100)>=0)
   {
   println("pink");
   
   img= loadImage("f.jpg");
    image(img,300,300);
     port.write("f");
 }
 } 
