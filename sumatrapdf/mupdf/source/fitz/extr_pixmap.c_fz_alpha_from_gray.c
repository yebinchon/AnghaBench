
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int n; unsigned char* samples; int stride; int h; int w; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int assert (int) ;
 TYPE_1__* fz_new_pixmap_with_bbox (int *,int *,int ,int ,int) ;
 int fz_pixmap_bbox (int *,TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

fz_pixmap *
fz_alpha_from_gray(fz_context *ctx, fz_pixmap *gray)
{
 fz_pixmap *alpha;
 unsigned char *sp, *dp;
 int w, h, sstride, dstride;

 assert(gray->n == 1);

 alpha = fz_new_pixmap_with_bbox(ctx, ((void*)0), fz_pixmap_bbox(ctx, gray), 0, 1);
 dp = alpha->samples;
 dstride = alpha->stride;
 sp = gray->samples;
 sstride = gray->stride;

 h = gray->h;
 w = gray->w;
 while (h--)
 {
  memcpy(dp, sp, w);
  sp += sstride;
  dp += dstride;
 }

 return alpha;
}
