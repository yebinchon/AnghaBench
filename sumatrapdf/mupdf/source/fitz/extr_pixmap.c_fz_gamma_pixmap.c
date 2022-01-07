
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; int n; int alpha; int h; int w; int stride; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int pow (int,float) ;

void
fz_gamma_pixmap(fz_context *ctx, fz_pixmap *pix, float gamma)
{
 unsigned char gamma_map[256];
 unsigned char *s = pix->samples;
 int n1 = pix->n - pix->alpha;
 int n = pix->n;
 int k, x, y;

 for (k = 0; k < 256; k++)
  gamma_map[k] = pow(k / 255.0f, gamma) * 255;

 for (y = 0; y < pix->h; y++)
 {
  for (x = 0; x < pix->w; x++)
  {
   for (k = 0; k < n1; k++)
    s[k] = gamma_map[s[k]];
   s += n;
  }
  s += pix->stride - pix->w * n;
 }
}
