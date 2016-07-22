PImage bg1, bg2, hp, enemy, fighter, treasure ;
int bg1X, bg1Y ;
int bg2X, bg2Y ;
int bgSpeedX ;
int hpW ;
int eX, eY ; 
int eSpeedX ;
int tX, tY ;

void setup () {
  size(640,480) ; 
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  hp = loadImage("img/hp.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  
  //background
  bg1X = 0 ;
  bg1Y = 0 ;
  bg2X = 640-bg1X ;
  bg2Y = 0 ;
  bgSpeedX = 1 ;
  
  //enemy
  eX = 0 ;
  eY = floor(random(0+30,height-50));
  eSpeedX = floor(random(3,5)) ;
  
  //treasure
  tX = floor(random(0,width-50));
  tY = floor(random(0+30,height-30));
  
  //hp
  hpW = floor(random(1,200));
  
}

void draw() {
  background(0);
  
  //treasure
  image(treasure,tX,tY);
  
  //fighter
  image(fighter,width-60,height/2-20);
  
  //enemy
  image(enemy,eX,eY);
  eX += eSpeedX ;
  eX %= width ;
  
  //hp
  noStroke();
  fill(255,0,0);
  rect(10,5,hpW,20);
  image(hp,0,0);



}
