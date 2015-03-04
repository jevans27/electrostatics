class Vector2 {
  float x, y;
  
  Vector2(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  Vector2(Vector2 b) {
   x = b.x;
   y = b.y; 
  }
  
  float mag() {
    return sqrt(x*x + y*y);
  }
  
  void norm() {
    x /= sqrt(x*x+y*y);
    y /= sqrt(x*x+y*y);
  }
  
  void add(Vector2 v) {
   x += v.x;
   y += v.y;
  }
 
  void sub(Vector2 v) {
   x -= v.x;
   y -= v.y;
  }
 
 void mult(float a) {
  x *= a;
  y *= a;
 }
 
 void div(float a) {
  x /= a;
  y /= a;
 }

 float scalarproduct(Vector2 v) {
   return x*v.x + y*v.y;
 }
 
 float theta(Vector2 v) {
  // A • B = |A||B|cos(theta)
  // theta = acos((A • B)/(|A||B|))
  return acos(this.scalarproduct(v)/(this.mag() * v.mag())); 
 }
 
 Vector2 vectorproduct(Vector2 v) {
   // TODO
   return new Vector2(0.0,0.0);
 }
 
 void rotate(float phi) {
   
 }
}
