void setup(){
  size(1000,1000);
  background(255);
  textAlign(CENTER,CENTER);
  fill(0);
}



class Point {
  float x,y;
  
  Point(float x,float y){
  this.x = x;
  this.y = y;
  }
  Point(){
    x = 0;
    y = 0;  
  }
  
  Point copy(){
    return new Point(x,y);
  }
}

class VisualPoint extends Point {
  float w;
  color c;
  VisualPoint(float x,float y,float w,color c){
  super(x,y);
  this.w = w;
  this.c = c;
  }  
  void display(){
  stroke(c);
  strokeWeight(w);
  point(x,y);
  }
  
}

void render(){
  VisualPoint[] points = new VisualPoint[1000];
  
  for (int i = 0;i < points .length;i++){
    float radian = random(TAU);
    float radius =pow(random(1),1)*450;
    float x = cos(radian)*radius;
    float y = sin(radian)*radius;
    float w = random(1,20);
    color c = color(random(200));
    points[i] = new VisualPoint(x,y,w,c);
  }
  
  translate(width/2,height/2);
  for (VisualPoint p : points) p.display();
}
