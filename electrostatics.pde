int SIDE = 800;
int SCALE = 10; //20 - 2D, 5 - 3D
int Z = 0;

Grid2 grid;

void setup() {
  size(800,800, P3D);
  smooth();

  grid = new Grid2(SIDE, SCALE);
  
  grid.sources = new PointCharge2[1];
  grid.sources[0] = new PointCharge2(new Vector2(SIDE/2,SIDE/2), 1.0);
  
  grid.calculateElectricFieldDensity();
}

void draw() {
  background(0);
  grid.drawElectricFieldDensity2D(Z);
}
