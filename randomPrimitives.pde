float xIdx = 20;
float yIdx = 20;

void setup() {
  size(750,750);
  setBackcolor();
}

void draw() {
   int shapeNum = int(random(6));
   //println(shapeNum);
   
   switch(shapeNum) {
     case 0:
       ellipse(xIdx, yIdx, random(50), random(50));
       fill(random(255));
       break;
     case 1:
       rect(xIdx, yIdx, random(50), random(50));
       fill(random(255));
       break;
     case 2:
       triangle(xIdx, yIdx, xIdx + random(50), yIdx + random(50), xIdx + random(50), yIdx + random(50));
       fill(random(255));
       break;
     case 3:
       line(xIdx, yIdx, xIdx + random(30), yIdx + random(50));
       strokeWeight(random(11));
       stroke(random(255));
       break;
   }
   
   xIdx += 30;
   if(xIdx >= 750) {// moves x index back to origin if at max, increments y
     xIdx = 0;
     yIdx += 30;
     if(yIdx >= 750) {
       yIdx = 0;
       setBackcolor();
     }
   }
   
}

void setBackcolor() {
  // randomly set bg color
  float bg = int(random(2));
  println(bg);
  if(bg == 1){ 
    background(255);
  }
  else {
    background(0);
  }
}