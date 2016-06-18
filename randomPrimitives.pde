float xIdx = 20;
float yIdx = 20;

void setup() {
  size(770,770);
  setBackcolor();
}

void draw() {
   int shapeNum = int(random(6));
   //println(shapeNum); debug
   
   switch(shapeNum) {
     case 0:
       ellipse(xIdx, yIdx, random(50), random(50));
       //fill(random(255));
       keyCheck();
       break;
     case 1:
       rect(xIdx, yIdx, random(50), random(50));
       //fill(random(255));
       keyCheck();
       break;
     case 2:
       triangle(xIdx, yIdx, xIdx + random(50), yIdx + random(50), xIdx + random(50), yIdx + random(50));
       //fill(random(255));
       keyCheck();
       break;
     case 3:
       line(xIdx, yIdx, xIdx + random(30), yIdx + random(50));
       //strokeWeight(random(11));
       //stroke(random(255));
       keyCheck();
       break;
   }
   
   xIdx += 30;
   if(xIdx >= 750) {// moves x index back to origin if at max, increments y
     xIdx = 30;
     yIdx += 30;
     if(yIdx >= 750) {
       yIdx = 30;
       //setBackcolor(); this is less fun to look at each time and to implement a backcolor change while preserving the shapes drawn on it will probably be too complicated
     }
   }
   
}

void keyCheck() {
  // checks for keypresses, changes shape colors and strokes accordingly
  if(keyPressed) {
    // if key(s) pressed, make color things happen
    if(key == 's') {
      stroke(random(255), random(255), random(255));
      strokeWeight(random(11));
    }
    if(key == 'f') {
      fill(random(255), random(255), random(255));
    }
  }
  else {
    fill(random(255));
    strokeWeight(2);
  }
  
  // pixel static
  if(mousePressed){// shuffle the pixels on the canvas
     loadPixels();
     color tmp[] = new color[pixels.length];
     // load pixels into temporary array
     for(int i = 0; i < height * width; i++) {
       tmp[i] = pixels[i];
     }
     
     for(int i = 0; i < 1250; i++){// takes pixels from one array, puts them in a random spot on the canvas
       pixels[int(random(pixels.length))] = tmp[int(random(pixels.length))];
     }
     updatePixels();
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