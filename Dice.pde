Die bob;
int sumRolls;

void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(192);
  for (int i = 0; i < 450; i+=50){
    for (int j = 0; j < 500; j += 50){
      bob = new Die(j, i);
      bob.show();
      bob.roll();
    }
  }
  textSize(30);
  text("Sum of rolls: " + sumRolls, 135, 487);
  sumRolls = 0;
}

void mousePressed(){
  redraw();
}
 
class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, myRoll, myColorOne, myColorTwo, myColorThree;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          myColorOne = (int)(Math.random() * 255) + 1;
          myColorTwo = (int)(Math.random() * 150) + 1;
          myColorThree = (int)(Math.random() * 255) + 1;
      }
      void roll()
      {
        myRoll = (int)(Math.random() * 6) + 1;
        //One dot
        if (myRoll == 1){
          fill(0);
          ellipse(myX + 25, myY + 25, 10, 10);
          sumRolls++;
        } else if (myRoll == 2){ // 2 dots
          fill(0);
          ellipse(myX + 15, myY + 15, 10, 10);
          ellipse(myX + 35, myY + 35, 10, 10);
          sumRolls+=2;
        } else if (myRoll == 3){ // 3 dots
          fill(0);
          ellipse(myX + 10, myY + 10, 10, 10);
          ellipse(myX + 25, myY + 25, 10, 10);
          ellipse(myX + 40, myY + 40, 10, 10);
          sumRolls+=3;
        } else if (myRoll == 4){ // 4 dots
          fill(0);
          ellipse(myX + 15, myY + 15, 10, 10);
          ellipse(myX + 35, myY + 15, 10, 10);
          ellipse(myX + 15, myY + 35, 10, 10);
          ellipse(myX + 35, myY + 35, 10, 10);
          sumRolls+=4;
        } else if (myRoll == 5){ // 5 dots
          fill(0);
          ellipse(myX + 12, myY + 12, 10, 10);
          ellipse(myX + 38, myY + 12, 10, 10);
          ellipse(myX + 12, myY + 38, 10, 10);
          ellipse(myX + 38, myY + 38, 10, 10);
          ellipse(myX + 25, myY + 25, 10, 10);
          sumRolls+=5;
        } else{ // 6 dots
          fill(0);
          ellipse(myX + 15, myY + 11, 10, 10);
          ellipse(myX + 15, myY + 26, 10, 10);
          ellipse(myX + 15, myY + 41, 10, 10);
          ellipse(myX + 35, myY + 11, 10, 10);
          ellipse(myX + 35, myY + 26, 10, 10);
          ellipse(myX + 35, myY + 41, 10, 10);
          sumRolls+=6;
        }
      }
      void show()
      {
        //Dice Shape
        fill(myColorOne, myColorTwo, myColorThree);
        stroke(0);
        strokeWeight(3);
        rect(myX, myY, 50, 50);
      }
  }
