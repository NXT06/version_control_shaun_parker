class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  color randomColor;
  
  Particle(float x, float y, float c, float v, float b){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    randomColor = color(c, v, b);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(randomColor);
    ellipse(position.x, position.y, 10, 10);
  }
}
