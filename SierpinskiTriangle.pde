int limit = 100;
color c;
int frameCount = 0;

void setup() {
  size(1000, 1000);
  c = color(random(255), random(255), random(255));
  frameRate(10);
}

void draw() {
  background(255);
  fill(c);
  sierpinski(100, 550, 400);
  frameCount++;
  if (frameCount % 10 == 0) {
    c = color(random(255), random(255), random(255));
  }
}

void sierpinski(float x, float y, float len) {
  if (len <= limit) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

void mouseClicked() {
  limit = limit - 10;
}
