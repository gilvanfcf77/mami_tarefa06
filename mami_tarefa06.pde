/*I - PARA CÁLCULO DAS DIMENSÕES, TOMAR-SE-Á POR BASE A ALTURA DESEJADA, DIVIDINDO-SE ESTA EM 14 PARTES IGUAIS.
 CADA UMA DAS PARTES SERÁ CONSIDERADA UMA MEDIDA OU MÓDULO
 II - A LARGURA TOTAL SERÁ DE 20 MÓDULOS 
 III - A DISTÂNCIA DOS VÉRTICES DO LOSANGO AO QUADRO EXTERNO SERÁ DE UM MÓDULO E SETE DÉCIMOS
 IV - O CÍRCULO NO MEIO DO LOSANGO TERÁ O RAIO DE TRÊS MÓDULOS E MEIO
 V – O centro dos arcos da faixa branca estará dois módulos (2M) à esquerda do ponto do encontro do prolongamento do diâmetro vertical do círculo com a base do quadro externo. (…)
 VI – O raio do arco inferior da faixa branca será de oito módulos (8M); o raio do arco superior da faixa branca será de oito módulos e meio (8,5M).
 VII – A largura da faixa branca será de meio módulo (0,5M).
 
 */

void setup() {
  size(1000, 800);
}

void draw() {
  clear();  
  background(0);
  mostraBandeiraBR(mouseX, mouseY, 500);
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

  fill(0, 156, 59);
  rect(xBandeira-largura/2, yBandeira-altura/2, largura, altura);  
  fill(255, 223, 0);
  quad(xBandeira, yBandeira-altura/2 +d, xBandeira+largura/2-d, yBandeira, xBandeira, yBandeira+altura/2-d, xBandeira-largura/2+d, yBandeira);
  fill(0, 19, 118);
  ellipse(xBandeira, yBandeira, raio*2, raio*2);
}
