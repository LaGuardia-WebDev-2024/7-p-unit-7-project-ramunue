//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); // Set the canvas size
}

//🎯Variable Declarations Go Here
var pigX = 200;
var pigY = 200;
var pigSize = 100;
var pigSpeed = 2;
var pigDirection = 1; // 1 for moving right, -1 for moving left

//🟢Draw Procedure - Runs on Repeat
draw = function() {
    background(255, 255, 255); // Set background color (white)

    // Pig Movement
    pigX += pigSpeed * pigDirection;

    // Change direction when hitting the canvas edges
    if (pigX > width - pigSize / 2 || pigX < pigSize / 2) {
        pigDirection *= -1;
    }

    // Make the pig grow and shrink
    pigSize = 100 + 10 * sin(frameCount * 0.1); // Pig grows and shrinks over time

    // Draw the pig body
    fill(255, 182, 193); // Pink color for the pig
    ellipse(pigX, pigY, pigSize, pigSize);

    // Pig ears
    fill(255, 182, 193);
    ellipse(pigX - 30, pigY - 40, pigSize / 3, pigSize / 2); // Left ear
    ellipse(pigX + 30, pigY - 40, pigSize / 3, pigSize / 2); // Right ear

    // Pig eyes
    fill(0); // Black color for the eyes
    ellipse(pigX - 20, pigY - 20, pigSize / 4, pigSize / 4); // Left eye
    ellipse(pigX + 20, pigY - 20, pigSize / 4, pigSize / 4); // Right eye

    // Pig nose
    fill(255, 105, 180); // Light pink for the nose
    ellipse(pigX, pigY + 30, pigSize / 1.5, pigSize / 1.5); // Nose

    // Pig nostrils
    fill(0); // Black for the nostrils
    ellipse(pigX - 10, pigY + 30, pigSize / 10, pigSize / 10); // Left nostril
    ellipse(pigX + 10, pigY + 30, pigSize / 10, pigSize / 10); // Right nostril

    // Pig smile
    stroke(0);
    noFill();
    arc(pigX, pigY + 50, pigSize, pigSize / 2, 0, PI); // Smile
    
    //🎯Extra Animation Fun (Mouse-Pressed Info)
    if (mousePressed) {
        showXYPositions();
    }
}

//🟡Extra Fun Features Ms. Hall Added
function showXYPositions() {
    fill(255, 255, 255);
    rect(270, 300, 150, 100); // Box for displaying mouse coordinates
    fill(0, 0, 0);
    textSize(30);
    text("x = " + mouseX + "\ny = " + mouseY, 290, 350);
    fill(255, 0, 255);
    ellipse(mouseX, mouseY, 10, 10); // Display a circle where the mouse is
    fill(255, 255, 255);
}