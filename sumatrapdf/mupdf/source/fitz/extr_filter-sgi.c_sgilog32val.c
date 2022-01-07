
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int fz_context ;


 int FZ_LN2 ;
 float UVSCALE ;
 float expf (int) ;
 int sqrtf (float) ;

__attribute__((used)) static inline void
sgilog32val(fz_context *ctx, uint32_t p, uint8_t *rgb)
{
 float r, g, b;
 float u, v, s, x, y;
 float X, Y, Z;

 if (p>>31)
 {
  X = Y = Z = 0;
 }
 else
 {
  int Le = (p>>16) & 0x7fff;
  Y = !Le ? 0 : expf(FZ_LN2/256*(Le+.5f) - FZ_LN2*64);

  u = (1.f/UVSCALE) * ((p>>8 & 0xff) + .5f);
  v = (1.f/UVSCALE) * ((p & 0xff) + .5f);
  s = 6*u - 16*v + 12;
  x = 9 * u;
  y = 4 * v;


  X = x/y * Y;
  Z = (s-x-y)/y * Y;
 }


 r = 2.690f*X + -1.276f*Y + -0.414f*Z;
 g = -1.022f*X + 1.978f*Y + 0.044f*Z;
 b = 0.061f*X + -0.224f*Y + 1.163f*Z;



 rgb[0] = (uint8_t)((r<=0) ? 0 : (r >= 1) ? 255 : (int)(256*sqrtf(r)));
 rgb[1] = (uint8_t)((g<=0) ? 0 : (g >= 1) ? 255 : (int)(256*sqrtf(g)));
 rgb[2] = (uint8_t)((b<=0) ? 0 : (b >= 1) ? 255 : (int)(256*sqrtf(b)));
}
