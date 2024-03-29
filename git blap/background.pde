void setup()
{
  
  size(600, 1000, P3D);
  
  translate(width/2, height/2);
  
  float fov = PI/1.3;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height),cameraZ/10.0, cameraZ*10.0);
  
  
  
  color sd = color(140,200,255);
  color sl = color(200,240,255);
  fillGradient(-1500,-3000,3000,6000,sl,sd);
  //background
  translate(0,100,100);
  fill(140,200,255);
  //rect(-1500,-3000,3000,6000);
  noStroke();
  fill(125);
  
  //skyline
  rect(-250,-100,50,600); 
  rect(-200,0,50,600); 
  rect(-170,120,50,600); 
  rect(-100,200,60,600);
  
  //rect(-20,0,50,600);
  quad(-40,600,40,600,5,-400,-5,-400);
  ellipse(0,-350,80,10);
  ellipse(0,-330,160,20);
  
  rect(50,100,40,600);
  rect(50,190,55,600);
  rect(110,30,50,600);
  rect(110,100,70,600);
  rect(180,-70,50,600);
  
  rect(-200,300,100,600);
  rect(50,340,300,600);
  
  pushMatrix();
  translate(700,-1800,0);
  
  
  //sun
  fill(255);
  ellipse(0,0,200,200);
  
  pushMatrix();
  for (int i = 0; i < 8; i++)
  {
    triangle(0,-200,-20,-120,20,-120);
    rotate(PI/4);
  }
  popMatrix();
  
  // clouds
  translate(-700,0,0);
  fill(230);
  ellipse(-300,200,300,100);
  ellipse(-500,150,400,200);
  ellipse(-700,200,300,100);
  
  translate(800,400,0);
  ellipse(-300,200,300,100);
  ellipse(-500,150,400,200);
  ellipse(-700,200,300,100);
  
  translate(-400,400,0);
  ellipse(-300,200,300,100);
  ellipse(-450,225,150,50);
  ellipse(-150,225,150,50);  
  
  translate(-1300,-200,0);
  ellipse(-300,200,300,100);
  ellipse(-450,225,150,50);
  ellipse(-150,225,150,50);  
  
  popMatrix();
  
  translate(0,-50,550);
  // floor

  pushMatrix();
  rotateX(PI/2);
  translate(0,0,-450);
  stroke(0);
  strokeWeight(2);
  fill(125);
  
  //street
  pushMatrix();
  translate(0,0,-10);
  rect(-400, -700, 800, 900);
  color gd = color(75);
  color gl = color(130);
  fillGradient(-400,-650,800,900,gl,gd);
  stroke(0);
  popMatrix();

  //street details
  pushMatrix();
  strokeWeight(1);
  stroke(125);
  //translate(0,0,-5);
  fill(50);
  
  line(130,-550,130,20);
  line(-130,-550,-130,20);
  line(600,20,130,20);
  line(-600,20,-130,20);
  stroke(0);
  ellipse(80,-200,80,7);
  
  //fill(200);
  noFill();
  quad(-60,0,-30,-10,-60,-5,-90,-10);
  
  popMatrix();
  
  
  popMatrix();
  strokeWeight(2);
  
  //buildings
  pushMatrix();
  rotateY(PI/2);
  fill(100);
  pushMatrix();
  translate(0,0,200);
  
  //right side of street
  rect(0, -400, 100, 850);
  rect(120, -300, 100, 750);
  rect(240, -600, 70, 1050);
  rect(330, -350, 100, 800);
  rect(450, -200, 100, 650);
  popMatrix();
  
  pushMatrix();
  translate(0,0,-200);
  fill(135);
  //left side of street
  rect(0, -200, 100, 650);
  rect(120, -700, 70, 1150);
  rect(210,-160, 150, 610);
  rect(380,-300, 100, 750);
  popMatrix();
  popMatrix();
  
  //facing walls
  fill(125);
  //right
  pushMatrix();
  rect(200,-400,200,850);
  pushMatrix();
  
  noStroke();
  translate(275,385,1);
  fill(255,255,0);
  
  
  //rect(0,0,10,10);
  // grafitti
  
  arc(-40,0,50,50,PI/6,11*PI/6);
  arc(-10,0,25,25,PI/6,11*PI/6);
  arc(5,0,12,12,PI/6,11*PI/6);
  arc(12,0,6,6,PI/6,11*PI/6);
  
  arc(20,0,100,100,-5* PI/6, 5*PI/6);
  
  stroke(0);
  popMatrix();

  fill(125);
  translate(0,0,-120);
  rect(200,-300,200,750);
  translate(0,0,-120);
  rect(200,-600,200,1050);
  translate(0,0,-90);
  rect(200,-350,200,800);
  translate(0,0,-120);
  rect(200,-200,200,650);
  popMatrix();
  
  //left
  pushMatrix();
  rect(-400,-200,200,650);
  
  pushMatrix();
  
  noStroke();
  translate(-300,385,1);
  fill(200);
  
  
  //rect(0,0,10,10);
  // grafitti
for(int i = 0; i < 6; i ++)
{
  noStroke();
  quad( -20,-40,20,-40,14,-30,-14,-30);
  stroke(255);
  curve(0,0, -20,-45,20,-45,0,0);
  
  arc(0,0,100,100,18*PI/12,19.7*PI/12);
rotateZ(PI/3);
}
  stroke(0);
  popMatrix();
  fill(125);
  translate(0,0,-120);
  rect(-450,-700,250,1150);
  translate(0,0,-90);
  rect(-400,-160,200,610);
  translate(0,0,-170);
  rect(-400,-300,200,750);
  popMatrix();
}

void fillGradient(int x, int y, float w, float h, color c1, color c2) {

  strokeWeight(1);
  noFill();
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
    strokeWeight(2);
}

