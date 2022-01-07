
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; int stride; int w; int n; int alpha; int h; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int FZ_MAX_COLORS ;
 unsigned char fz_clampi (int,int ,int) ;

void
fz_decode_indexed_tile(fz_context *ctx, fz_pixmap *pix, const float *decode, int maxval)
{
 int add[FZ_MAX_COLORS];
 int mul[FZ_MAX_COLORS];
 unsigned char *p = pix->samples;
 int stride = pix->stride - pix->w * pix->n;
 int len;
 int pn = pix->n;
 int n = pn - pix->alpha;
 int needed;
 int k;
 int h;

 needed = 0;
 for (k = 0; k < n; k++)
 {
  int min = decode[k * 2] * 256;
  int max = decode[k * 2 + 1] * 256;
  add[k] = min;
  mul[k] = (max - min) / maxval;
  needed |= min != 0 || max != maxval * 256;
 }

 if (!needed)
  return;

 h = pix->h;
 while (h--)
 {
  len = pix->w;
  while (len--)
  {
   for (k = 0; k < n; k++)
   {
    int value = (add[k] + (((p[k] << 8) * mul[k]) >> 8)) >> 8;
    p[k] = fz_clampi(value, 0, 255);
   }
   p += pn;
  }
  p += stride;
 }
}
