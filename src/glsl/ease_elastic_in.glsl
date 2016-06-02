float easeElasticIn(float t, float b, float c, float d, float s, float p) {
    float a=c;

    if (t==0.0) return b;
    if ((t/=d)==1.0) return b+c;
    if (p == 0.0) p=d*.3;

    if (a < abs(c)) {
      a=c;
      s=p/4.0;
    }
    else s = p/PI2 * asin(c/a);
    
    return -(a*pow(2.0,10.0*(t-=1.0)) * sin( (t*d-s)*PI2/p )) + b;
}

float easeElasticIn(float t, float b, float c, float d) {
    return easeElasticIn(t, b, c, d, 1.0, 0.3);
}

float easeElasticIn(float t) {
//  return sin(13.0 * t * 1.5707963267948966) * pow(2.0, 10.0 * (t - 1.0));
  float a=1.0;
  float s=1.0;
  float p=0.3;

  if (t==0.0) return 0.0;
  if ((t/=1.0)==1.0) return 1.0;
  if (p == 0.0) p=1.0*.3;

  if (a < (1.0)) {
    a=1.0;
    s=p/4.0;
  }
  else s = p/PI2 * asin(1.0/a);

  return -(a*pow(2.0,10.0*(t-=1.0)) * sin( (t*1.0-s)*PI2/p ));
}
