
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_context ;
typedef int byte ;


 int assert (int) ;
 int fz_paint_image_imp (int *,TYPE_1__*,int const*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int ,int const*,int,int,int,int const*) ;

void
fz_paint_image_with_color(fz_context *ctx, fz_pixmap *dst, const fz_irect *scissor, fz_pixmap *shape, fz_pixmap *group_alpha, fz_pixmap *img, fz_matrix ctm, const byte *color, int lerp_allowed, int as_tiled, const fz_overprint *eop)
{
 assert(img->n == 1);
 fz_paint_image_imp(ctx, dst, scissor, shape, group_alpha, img, ctm, color, 255, lerp_allowed, as_tiled, eop);
}
