
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_font ;
typedef int fz_context ;


 float MAX_GLYPH_SIZE ;
 int fz_font_ft_face (int *,int *) ;
 scalar_t__ fz_font_t3_procs (int *,int *) ;
 int fz_infinite_irect ;
 int * fz_render_ft_glyph_pixmap (int *,int *,int,int ,int) ;
 int * fz_render_t3_glyph_pixmap (int *,int *,int,int ,int *,int const*,int) ;
 float fz_subpixel_adjust (int *,int *,int *,unsigned char*,unsigned char*) ;
 int fz_warn (int *,char*) ;

fz_pixmap *
fz_render_glyph_pixmap(fz_context *ctx, fz_font *font, int gid, fz_matrix *ctm, const fz_irect *scissor, int aa)
{
 fz_pixmap *val = ((void*)0);
 unsigned char qe, qf;
 fz_matrix subpix_ctm;
 float size = fz_subpixel_adjust(ctx, ctm, &subpix_ctm, &qe, &qf);
 int is_ft_font = !!fz_font_ft_face(ctx, font);

 if (size <= MAX_GLYPH_SIZE)
 {
  scissor = &fz_infinite_irect;
 }
 else
 {
  if (is_ft_font)
   return ((void*)0);
 }

 if (is_ft_font)
 {
  val = fz_render_ft_glyph_pixmap(ctx, font, gid, subpix_ctm, aa);
 }
 else if (fz_font_t3_procs(ctx, font))
 {
  val = fz_render_t3_glyph_pixmap(ctx, font, gid, subpix_ctm, ((void*)0), scissor, aa);
 }
 else
 {
  fz_warn(ctx, "assert: uninitialized font structure");
  val = ((void*)0);
 }

 return val;
}
