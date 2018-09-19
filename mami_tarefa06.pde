void setup() {
  size(800, 600);
}

void draw() {
  clear();  
  background(0);
  mostraBandeiraBR(mouseX, mouseY, 200);
  //mostraBandeiraBR(width/2, height/2, 500);
}

void mostraBandeiraJP(float xBandeira, float yBandeira, float largura) {
  float altura = (2.0*largura)/3.0;
  float xr = xBandeira - largura/2.0;
  float yr = yBandeira - altura/2.0;
  println (largura, altura);
  float d = (3.0 * altura)/5.0;  
  fill(255, 255, 255);
  noStroke();
  rect(xr, yr, largura, altura);
  fill(180, 46, 61);
  ellipse(xBandeira, yBandeira, d, d);
}

void mostraBandeiraBR(float xBandeira, float yBandeira, float altura) {
  float modulo = altura/14;
  float largura = modulo * 20;
  float d = modulo + (7/10)*modulo;
  float raio = 3*modulo + modulo/2;

  fill(#009a3e);
  rect(xBandeira-largura/2, yBandeira-altura/2, largura, altura);  
  fill(#f5d00e);
  noStroke();
  quad(xBandeira, yBandeira-altura/2 +d, xBandeira+largura/2-d, yBandeira, xBandeira, yBandeira+altura/2-d, xBandeira-largura/2+d, yBandeira);
  fill(#3c1975);
  noStroke();
  ellipse(xBandeira, yBandeira, raio*2, raio*2);
}
