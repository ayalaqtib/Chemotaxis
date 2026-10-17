 //declare bacteria variables here 
 Bacteria[] fish;
 
 void setup()   
 {     
   size(800, 600);
   //initialize bacteria variables here   
   fish = new Bacteria[30];
   
   for(int i = 0; i < fish.length; i++){
     //random shade of pink
     int pink = color(255, (int)(Math.random()*100)+ 80, (int)(Math.random()*100)+150);
     
     fish[i] = new Bacteria((int)(Math.random() * width), (int)(Math.random() * height), pink);
   }//end of for
   
   
 }   
 void draw()   
 {    
   background(255, 240, 247);
   
   noStroke();
   fill(255, 190, 70);
   ellipse(mouseX, mouseY, 18, 18);
   
   //move and show the bacteria   
   
   for(int i = 0; i < fish.length; i++){
     fish[i].move();
     fish[i].show();
   }//end of for
   
 }  
 
 class Bacteria    
 {     
   //lots of java!   
   int x;
   int y;
   int c;
   
   //constructor
   Bacteria(int startX, int startY, int fishColor){
     x = startX;
     y = startY;
     c = fishColor;
   }
   
   void move(){
    //Random walk
    
    x += (int)(Math.random()*7)-3;
    y += (int)(Math.random()*7)-3;
    
    //Come towards the mouse
      if(x < mouseX)
        x += 1;
      else if (x > mouseX)
        x -= 1;
        
       if(y < mouseY)
         y += 1;
       else if (y > mouseY)
         y -= 1;
  
  }//end of move

//Drawing the fish
   void show(){
     //Tail
     fill(c);
     triangle(x-8, y, x-19, y-8, x -19, y + 8);
     
     //Body
     ellipse(x, y, 25, 16);
     
     //Eye
     fill(80, 40, 60);
     ellipse(x + 7, y - 2, 3, 3);
     
   }//end of show
   
 }//end of class
 
 
 
 
 
