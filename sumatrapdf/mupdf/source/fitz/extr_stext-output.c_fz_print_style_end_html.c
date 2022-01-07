
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_font ;
typedef int fz_context ;


 int fz_font_is_bold (int *,int *) ;
 int fz_font_is_italic (int *,int *) ;
 int fz_font_is_monospaced (int *,int *) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
fz_print_style_end_html(fz_context *ctx, fz_output *out, fz_font *font, float size, int sup)
{
 int is_mono = fz_font_is_monospaced(ctx, font);
 int is_bold = fz_font_is_bold(ctx,font);
 int is_italic = fz_font_is_italic(ctx, font);

 fz_write_string(ctx, out, "</span>");
 if (is_italic) fz_write_string(ctx, out, "</i>");
 if (is_bold) fz_write_string(ctx, out, "</b>");
 if (is_mono) fz_write_string(ctx, out, "</tt>");
 if (sup) fz_write_string(ctx, out, "</sup>");
}
