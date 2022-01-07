
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; int stride; int w; int n; int h; int alpha; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 unsigned char fz_mul255 (unsigned char,unsigned char) ;

void
fz_premultiply_pixmap(fz_context *ctx, fz_pixmap *pix)
{
 unsigned char *s = pix->samples;
 unsigned char a;
 int k, x, y;
 int stride = pix->stride - pix->w * pix->n;

 if (!pix->alpha)
  return;

 for (y = 0; y < pix->h; y++)
 {
  for (x = 0; x < pix->w; x++)
  {
   a = s[pix->n - 1];
   for (k = 0; k < pix->n - 1; k++)
    s[k] = fz_mul255(s[k], a);
   s += pix->n;
  }
  s += stride;
 }
}
