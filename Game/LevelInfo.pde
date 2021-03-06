public class LevelInfo {

    public void drawLevelInfo(int level) {

        textAlign(CENTER);
        textSize(24);
        fill(200);
        
        switch(level) {
            case 1:
                text("Aim your cursor here", width/2, 200);
                text("LEFT CLICK to get your charge to the goal", width/2, 600);

                drawArrow(625, 215, 780, 325);

                stroke(0);
                break;
            
            case 2:
                text("White charges are constant", width/2 + 100, 200);
                text("this negative charge produces an electric field", width/2 + 100, 600);
                text("that affects the ball's movement", width/2 + 100, 640);
                text("Press 't' to toggle the electric field view", width/2 + 100, 680);

                drawArrow(600, 225, 600, 355);
                break;

            case 3:
              text("Colored charges are able to be negated!", 250, 200);
              text("press SPACE to swap it", 250, 600);

              drawArrow(107, 220, 83, 335);
              break;

            case 7:
              text("Don't touch the pit!", 250, 180);
              drawArrow(324, 150, 324, 112);
              break;

            case 8:
              text("This is a wall", 240, 180);
              drawArrow(324, 150, 324, 112);
              break;
            
            case 11:
              text("Rotating charges can be picked up", 500, 90);
              text("to modify the player's charge", 500, 120);

              text("They do not change the electric field", 500, 700);
              break;
        }

        textAlign(LEFT);
        textSize(50);
    }

    public void drawArrow(int x1, int y1, int x2, int y2) {
      // find distance between (x1, y1) and (x2, y2)
      float dist = sqrt(sq(x1 - x2) + sq(y1 - y2));

      // find angle of line
      float angle = atan2(y2 - y1, x2 - x1);

      stroke(200);
      strokeWeight(3);
      pushMatrix();
      translate(x1, y1);
      rotate(angle);
      line(0,0,dist, 0);
      line(dist, 0, dist - 8, -8);
      line(dist, 0, dist - 8, 8);
      popMatrix();
      strokeWeight(4);
    }

}