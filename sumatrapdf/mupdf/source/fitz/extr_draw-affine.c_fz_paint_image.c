
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_context ;


 int fz_paint_image_imp (int *,int *,int const*,int *,int *,int *,int ,int *,int,int,int,int const*) ;

void
fz_paint_image(fz_context *ctx, fz_pixmap *dst, const fz_irect *scissor, fz_pixmap *shape, fz_pixmap *group_alpha, fz_pixmap *img, fz_matrix ctm, int alpha, int lerp_allowed, int as_tiled, const fz_overprint *eop)
{
 fz_paint_image_imp(ctx, dst, scissor, shape, group_alpha, img, ctm, ((void*)0), alpha, lerp_allowed, as_tiled, eop);
}
