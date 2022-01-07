
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* fz_solid_color_painter_t ) (unsigned char*,int,int,unsigned char*,int,int *) ;
struct TYPE_3__ {int alpha; int x; unsigned char* samples; int y; int stride; int n; scalar_t__ w; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_irect ;


 int fz_clampi (int,int,scalar_t__) ;
 int memset (unsigned char*,int,int) ;
 int stub1 (unsigned char*,int,int,unsigned char*,int,int *) ;

__attribute__((used)) static inline void
blit_sharp(int x0, int x1, int y, const fz_irect *clip, fz_pixmap *dst, unsigned char *color, fz_solid_color_painter_t *fn, fz_overprint *eop)
{
 unsigned char *dp;
 int da = dst->alpha;
 x0 = fz_clampi(x0, dst->x, dst->x + dst->w);
 x1 = fz_clampi(x1, dst->x, dst->x + dst->w);
 if (x0 < x1)
 {
  dp = dst->samples + (unsigned int)((y - dst->y) * dst->stride + (x0 - dst->x) * dst->n);
  if (color)
   (*fn)(dp, dst->n, x1 - x0, color, da, eop);
  else
   memset(dp, 255, x1-x0);
 }
}
