
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stride; unsigned char* samples; int x; int y; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 TYPE_1__* fz_new_pixmap (int *,int *,int,int,int *,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

fz_pixmap *
fz_new_pixmap_from_8bpp_data(fz_context *ctx, int x, int y, int w, int h, unsigned char *sp, int span)
{
 fz_pixmap *pixmap = fz_new_pixmap(ctx, ((void*)0), w, h, ((void*)0), 1);
 int stride = pixmap->stride;
 unsigned char *s = pixmap->samples;
 pixmap->x = x;
 pixmap->y = y;

 for (y = 0; y < h; y++)
 {
  memcpy(s, sp + y * span, w);
  s += stride;
 }

 return pixmap;
}
