
//oi
void setup() {
  
  size(1000, 1000, P3D);
  background(255);
  
 
}


float ax=0 , ay=0 , az=0 ,
      bx=10 , by=0 , bz=0 ,
      cx=0 , cy=8 , cz=6 ,
      dx=10 , dy=8 , dz=6 ;
float tetacentro=0,tetaroda=0;

void draw (){
  background(255);
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  translate(width / 2, height / 2);
  noFill();
  scale(30, -30);
 
 rotateX(-PI/3);
 rotateZ(-PI/3);
 
//desenhando eixos para melhor vizualizacao
stroke(255,0,0);//X red
point(100,0,0);
line(100,0,0,0,0,0);

stroke(0,255,0);//y green
point(0,100,0);
line(0,100,0,0,0,0);

stroke(0,0,255);//z blue
point(0,0,10);
line(0,0,100,0,0,0);
///

//desenhando rampa


point(bx,by,bz);
point(ax,ay,az);
point(cx,cy,cz);  
point(dx,dy,dz);
stroke(100,100,100);
line(ax,ay,az,bx,by,bz);
line(bx,by,bz,dx,dy,dz);
line(ax,ay,az,cx,cy,cz);
line(dx,dy,dz,cx,cy,cz);


//desenhando circulo 1

/*
//colocar centro da rampa na origem e alinhar com plano XY
transladar -5, -4, -3
rotacionar 37 graus
transladar 0,0,-1//colocar centro da roda no plano XY

//calcular novo ponto do centro da roda
xcr = xcr*cos(tetacentro)-ycr*sen(tetacentro);
ycr = ycr*cos(tetacentro)+xcr*sen(tetacentro);
tetacentro+=PI/30;

//colocar centro da roda na origem e alinhar com XY
transladar -xcr,-ycr
rotacionar -teta em Z
rotacionar -PI/2 em X (talvez em y)

//calcular novo ponto que gira na roda
xrod = xrod*cos(tetacroda)-yrod*sen(tetacroda);
yrod = yrod*cos(tetacroda)+xrod*sen(tetacroda);
tetaroda+=PI/6;

//backtrack
rotacionar PI/2 em X
rotacionar teta em Z
transladar xcr,ycr

//backtrack
transladar 0,0,1
rotacionar -37 graus
transladar 5,4,3
*/



}