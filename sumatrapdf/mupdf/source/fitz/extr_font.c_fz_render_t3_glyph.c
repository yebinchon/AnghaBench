
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_glyph ;
typedef int fz_font ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_new_glyph_from_pixmap (int *,int *) ;
 int * fz_render_t3_glyph_pixmap (int *,int *,int,int ,int *,int const*,int) ;

fz_glyph *
fz_render_t3_glyph(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, fz_colorspace *model, const fz_irect *scissor, int aa)
{
 fz_pixmap *pixmap = fz_render_t3_glyph_pixmap(ctx, font, gid, trm, model, scissor, aa);
 return fz_new_glyph_from_pixmap(ctx, pixmap);
}
