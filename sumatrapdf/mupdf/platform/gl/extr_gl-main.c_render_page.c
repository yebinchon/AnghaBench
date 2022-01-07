
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;


 int ctx ;
 int currentaa ;
 scalar_t__ currentinvert ;
 scalar_t__ currenttint ;
 int draw_page_ctm ;
 int fz_device_rgb (int ) ;
 int fz_drop_pixmap (int ,int *) ;
 int fz_gamma_pixmap (int ,int *,int) ;
 int fz_invert_pixmap_luminance (int ,int *) ;
 int * fz_new_pixmap_from_page_with_separations (int ,int ,int ,int ,int ,int ) ;
 int fz_set_aa_level (int ,int ) ;
 int fz_tint_pixmap (int ,int *,int ,int ) ;
 int fzpage ;
 int page_tex ;
 int seps ;
 int tint_black ;
 int tint_white ;
 int transform_page () ;
 int ui_texture_from_pixmap (int *,int *) ;

void render_page(void)
{
 fz_pixmap *pix;

 transform_page();

 fz_set_aa_level(ctx, currentaa);

 pix = fz_new_pixmap_from_page_with_separations(ctx, fzpage, draw_page_ctm, fz_device_rgb(ctx), seps, 0);
 if (currentinvert)
 {
  fz_invert_pixmap_luminance(ctx, pix);
  fz_gamma_pixmap(ctx, pix, 1 / 1.4f);
 }
 if (currenttint)
 {
  fz_tint_pixmap(ctx, pix, tint_black, tint_white);
 }

 ui_texture_from_pixmap(&page_tex, pix);
 fz_drop_pixmap(ctx, pix);
}
