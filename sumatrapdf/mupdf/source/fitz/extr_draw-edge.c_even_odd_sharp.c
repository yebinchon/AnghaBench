
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_solid_color_painter_t ;
typedef int fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_irect ;
struct TYPE_5__ {int alen; TYPE_1__** active; } ;
typedef TYPE_2__ fz_gel ;
typedef int fz_context ;
struct TYPE_4__ {int x; } ;


 int blit_sharp (int,int,int,int const*,int *,unsigned char*,int *,int *) ;

__attribute__((used)) static inline void
even_odd_sharp(fz_context *ctx, fz_gel *gel, int y, const fz_irect *clip, fz_pixmap *dst, unsigned char *color, fz_solid_color_painter_t *fn, fz_overprint *eop)
{
 int even = 0;
 int x = 0;
 int i;
 for (i = 0; i < gel->alen; i++)
 {
  if (!even)
   x = gel->active[i]->x;
  else
   blit_sharp(x, gel->active[i]->x, y, clip, dst, color, fn, eop);
  even = !even;
 }
}
