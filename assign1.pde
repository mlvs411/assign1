PImage fighterImage;
PImage backgroundImage1,backgroundImage2;
PImage enemyImage;
PImage hpImage;
PImage treasureImage;

int tX, tY; //treasure position
int fX, fY; //fighter position
int bg1X; //backgroundimage1 position
int bg2X; //backgroundimage2 position
int enemyX, enemyY; //enemy position
int hpX;

void setup(){
  size(640,480);
  fX = 589;
  fY = 214;
  bg2X=639;
  bg1X=-1;
  tX=floor(random(41,600));
  tY=floor(random(41,440));
  hpX=floor(random(1,211));
  fighterImage = loadImage("img/fighter.png");
  backgroundImage1 = loadImage("img/bg1.png");
  backgroundImage2 = loadImage("img/bg2.png");
  enemyImage =loadImage("img/enemy.png");
  hpImage = loadImage("img/hp.png");
  treasureImage = loadImage("img/treasure.png");
}

void draw(){
  bg2X =(bg2X +1) * (int)Math.pow( -1 ,(bg2X+1) / 640) ;
  image(backgroundImage2,bg2X,0);
  bg1X =(bg1X +1) * (int)Math.pow( -1 ,(bg1X+1) / 640) ;
  image(backgroundImage1,bg1X,0);
  
  image(fighterImage,fX,fY);
  
  image(treasureImage,tX,tY);
  
  fill(#FF0000);
  rect(16,10,hpX,30);
  image(hpImage,10,10);
  
  image(enemyImage,enemyX,100);
  enemyX +=3;
  enemyX %= 640;

}
