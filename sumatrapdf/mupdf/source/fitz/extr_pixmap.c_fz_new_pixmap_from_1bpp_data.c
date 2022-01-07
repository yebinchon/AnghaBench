
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stride; int w; int x; int y; unsigned char* samples; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 TYPE_1__* fz_new_pixmap (int *,int *,int,int,int *,int) ;

fz_pixmap *
fz_new_pixmap_from_1bpp_data(fz_context *ctx, int x, int y, int w, int h, unsigned char *sp, int span)
{
 fz_pixmap *pixmap = fz_new_pixmap(ctx, ((void*)0), w, h, ((void*)0), 1);
 int stride = pixmap->stride - pixmap->w;
 pixmap->x = x;
 pixmap->y = y;

 for (y = 0; y < h; y++)
 {
  unsigned char *out = pixmap->samples + y * w;
  unsigned char *in = sp + y * span;
  unsigned char bit = 0x80;
  int ww = w;
  while (ww--)
  {
   *out++ = (*in & bit) ? 255 : 0;
   bit >>= 1;
   if (bit == 0)
    bit = 0x80, in++;
  }
  out += stride;
 }

 return pixmap;
}
