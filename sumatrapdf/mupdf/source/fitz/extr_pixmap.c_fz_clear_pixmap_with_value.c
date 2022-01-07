
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alpha; int w; int h; unsigned char* samples; int stride; int n; int s; int colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int clear_cmyk_bitmap (unsigned char*,int,int,int ,int,int,int) ;
 int fz_colorspace_n (int *,int ) ;
 int memset (unsigned char*,int,unsigned int) ;

void
fz_clear_pixmap_with_value(fz_context *ctx, fz_pixmap *pix, int value)
{
 unsigned char *s;
 int w, h, n, stride, len;
 int alpha = pix->alpha;

 w = pix->w;
 h = pix->h;
 if (w < 0 || h < 0)
  return;


 if (fz_colorspace_n(ctx, pix->colorspace) == 4)
 {
  clear_cmyk_bitmap(pix->samples, w, h, pix->s, pix->stride, 255-value, pix->alpha);
  return;
 }

 n = pix->n;
 stride = pix->stride;
 len = w * n;

 s = pix->samples;
 if (value == 255 || !alpha)
 {
  if (stride == len)
  {
   len *= h;
   h = 1;
  }
  while (h--)
  {
   memset(s, value, (unsigned int)len);
   s += stride;
  }
 }
 else
 {
  int k, x, y;
  stride -= len;
  for (y = 0; y < pix->h; y++)
  {
   for (x = 0; x < pix->w; x++)
   {
    for (k = 0; k < pix->n - 1; k++)
     *s++ = value;
    if (alpha)
     *s++ = 255;
   }
   s += stride;
  }
 }
}
