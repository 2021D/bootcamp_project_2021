int radius, numPoints;

import processing.sound.*;
SoundFile dance;
boolean play = false; 

void setup()
{
  dance = new SoundFile(this,"felix_blume_nature_ambience_toads_frogs_insects_amazon_rainforest_night_001.mp3");
  size(700, 700);
  radius    = 180;
  numPoints = 110;
}
 
void draw()
{
  background(0);
  stroke(255);
  strokeWeight(10);
  fill(15, 216, 16);
  circle(260, 260, 255);
  fill(15, 216, 16);
  circle(440, 440, 255);
  fill(255);
  ellipse(350, 350, 32, 32); //point in the middle of the sketch, flies body
  ellipse(width/1.6, height/3.1, 11, 18);
  ellipse(width/1.5, height/2.7, 18, 11);
  
 
  float t = frameCount/40.0;
  for (int p=0; p<numPoints; p++)
  {
   
          stroke(255, 0, 0);//1
          strokeWeight(20);
    point(width/2  + radius*cos(0.1*t*p/numPoints + t), height/2 + radius*sin(0.1*t*p/numPoints + t));
          stroke(0, 255, 0);//2
          strokeWeight(16);
    point(width/2  + radius/1.2*cos(0.1*t*p/numPoints + t), height/2 + radius/1.2*sin(0.1*t*p/numPoints + t));
          stroke(0, 0, 255);//3
    point(width/2  + radius/1.5*cos(0.1*t*p/numPoints + t), height/2 + radius/1.5*sin(0.1*t*p/numPoints + t));
          stroke(171, 45, 234);//4
          strokeWeight(13);
    point(width/2  + radius/1.8*cos(0.1*t*p/numPoints + t), height/2 + radius/1.8*sin(0.1*t*p/numPoints + t));
          stroke(234, 197, 45);//5
          strokeWeight(7);
    point(width/2  + radius/2*cos(0.1*t*p/numPoints + t), height/2 + radius/2*sin(0.1*t*p/numPoints + t));
          stroke(147, 22, 68);//6
          strokeWeight(7);
    point(width/2  + radius/2.3*cos(0.1*t*p/numPoints + t), height/2 + radius/2.3*sin(0.1*t*p/numPoints + t));
          stroke(66, 234, 191);//7
          strokeWeight(7);
    point(width/2  + radius/2.7*cos(0.1*t*p/numPoints + t), height/2 + radius/2.7*sin(0.1*t*p/numPoints + t));
          stroke(245, 87, 116);//8
          strokeWeight(7);
    point(width/2  + radius/3.6*cos(0.1*t*p/numPoints + t), height/2 + radius/3.6*sin(0.1*t*p/numPoints + t));
          stroke(15, 124, 57);//9
          strokeWeight(7);
    point(width/2  + radius/4.7*cos(0.1*t*p/numPoints + t), height/2 + radius/4.7*sin(0.1*t*p/numPoints + t));
          stroke(12, 134, 147);//10
          strokeWeight(5);
    point(width/2  + radius/6.1*cos(0.1*t*p/numPoints + t), height/2 + radius/6.1*sin(0.1*t*p/numPoints + t));
          
          
          
  }
}

void keyPressed()
 {
   if (key == ' ')
   {
   if (!play){
     dance.play();
     play = true;
   }}
   
   else if (key == 'p')
   if (play){
     dance.pause();
     play = false;
   }
   
 }
  
    
    
 
  
