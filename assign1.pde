PImage bg,soil,groundhog,life,soldier,robot;

int soldierX, soldierY,robotX,robotY;
int laserMove=0;

void setup(){
  
  size(640,480);
  
  bg = loadImage("img/bg.jpg");
  soil = loadImage("img/soil.png");
  groundhog = loadImage("img/groundhog.png");
  life = loadImage("img/life.png");
  soldier = loadImage("img/soldier.png");
  robot = loadImage("img/robot.png");
  
  
  soldierX=0;
  soldierY=floor(random(4))*80+160;
  
  
  robotX=floor(random(160,560));
  robotY=floor(random(4))*80+160;
  
 
}

void draw(){
  
  //put images
  image(bg,0,0);
  image(soil,0,160); //soil
  image(life,10,10); //3 heart
  image(life,80,10);
  image(life,150,10);
  
  //sun
  
  noStroke();
  fill(255,255,0);
  ellipse(590,50,125,125);
  
  noStroke();
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //Grassland
  stroke(124,204,25);
  strokeWeight(15);
  line(0,152.5,640,152.5);
  
  //put groundhog
  image(groundhog,280,80);
  
  
  
  //soldier
  image(soldier,soldierX,soldierY);
  soldierX=soldierX+5;
  soldierX%=640;
  
  //robot
  image(robot,robotX,robotY);
  
  
  //drawLaser
  stroke(255,0,0);
  strokeWeight(10);
  line(robotX+10+laserMove,robotY+37,robotX+25+laserMove,robotY+37);
  
  //letLaserMove
  if (laserMove>-185){
    laserMove-=2;
  }else{laserMove=0;}
}
