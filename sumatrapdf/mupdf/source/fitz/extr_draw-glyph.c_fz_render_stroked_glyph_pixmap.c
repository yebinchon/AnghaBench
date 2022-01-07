
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dash_len; } ;
typedef TYPE_1__ fz_stroke_state ;
typedef int fz_pixmap ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_font ;
typedef int fz_context ;


 scalar_t__ fz_font_ft_face (int *,int *) ;
 int * fz_render_ft_stroked_glyph_pixmap (int *,int *,int,int ,int ,TYPE_1__ const*,int) ;
 int * fz_render_glyph_pixmap (int *,int *,int,int *,int const*,int) ;
 int fz_subpixel_adjust (int *,int *,int *,unsigned char*,unsigned char*) ;

fz_pixmap *
fz_render_stroked_glyph_pixmap(fz_context *ctx, fz_font *font, int gid, fz_matrix *trm, fz_matrix ctm, const fz_stroke_state *stroke, const fz_irect *scissor, int aa)
{
 if (fz_font_ft_face(ctx, font))
 {
  fz_matrix subpix_trm;
  unsigned char qe, qf;

  if (stroke->dash_len > 0)
   return ((void*)0);
  (void)fz_subpixel_adjust(ctx, trm, &subpix_trm, &qe, &qf);
  return fz_render_ft_stroked_glyph_pixmap(ctx, font, gid, subpix_trm, ctm, stroke, aa);
 }
 return fz_render_glyph_pixmap(ctx, font, gid, trm, scissor, aa);
}
