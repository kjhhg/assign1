PImage bg1, bg2, hp, enemy, fighter, treasure ;
int bgX;
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
  bgX = 0 ;
  
  //enemy
  eX = 0 ;
  eY = floor(random(0+30,height-50));
  eSpeedX = floor(random(3,5)) ;
  
  //treasure
  tX = floor(random(0,width-30));
  tY = floor(random(0+30,height-30));
  
  //hp
  hpW = floor(random(1,200));
  
}
void draw() {
  
 //background
  image(bg1,bgX,0);
  image(bg2,bgX-640,0);
  bgX++;
  bgX %= 640;
  
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
