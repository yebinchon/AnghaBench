
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; int n; int alpha; int h; int w; int stride; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;



void
fz_invert_pixmap(fz_context *ctx, fz_pixmap *pix)
{
 unsigned char *s = pix->samples;
 int k, x, y;
 int n1 = pix->n - pix->alpha;
 int n = pix->n;

 for (y = 0; y < pix->h; y++)
 {
  for (x = 0; x < pix->w; x++)
  {
   for (k = 0; k < n1; k++)
    s[k] = 255 - s[k];
   s += n;
  }
  s += pix->stride - pix->w * n;
 }
}
