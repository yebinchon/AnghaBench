
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int super; } ;
typedef TYPE_1__ fz_gel ;
typedef int fz_context ;


 int fz_rasterizer_aa_hscale (int *) ;

__attribute__((used)) static inline void
add_span_aa(fz_context *ctx, fz_gel *gel, int *list, int x0, int x1, int xofs, int h)
{
 int x0pix, x0sub;
 int x1pix, x1sub;
 const int hscale = fz_rasterizer_aa_hscale(&gel->super);

 if (x0 == x1)
  return;


 x0 -= xofs;
 x1 -= xofs;




 x0pix = ((unsigned int)x0) / hscale;
 x0sub = ((unsigned int)x0) % hscale;
 x1pix = ((unsigned int)x1) / hscale;
 x1sub = ((unsigned int)x1) % hscale;

 if (x0pix == x1pix)
 {
  list[x0pix] += h*(x1sub - x0sub);
  list[x0pix+1] += h*(x0sub - x1sub);
 }

 else
 {
  list[x0pix] += h*(hscale - x0sub);
  list[x0pix+1] += h*x0sub;
  list[x1pix] += h*(x1sub - hscale);
  list[x1pix+1] += h*-x1sub;
 }
}
