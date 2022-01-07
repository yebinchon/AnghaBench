
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_font ;
typedef int fz_context ;


 int font_family_name (int *,int *,char*,int,int,int) ;
 int fz_font_is_bold (int *,int *) ;
 int fz_font_is_italic (int *,int *) ;
 int fz_font_is_monospaced (int *,int *) ;
 int fz_font_is_serif (int *,int *) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
fz_print_style_begin_html(fz_context *ctx, fz_output *out, fz_font *font, float size, int sup, int color)
{
 char family[80];

 int is_bold = fz_font_is_bold(ctx, font);
 int is_italic = fz_font_is_italic(ctx, font);
 int is_serif = fz_font_is_serif(ctx, font);
 int is_mono = fz_font_is_monospaced(ctx, font);

 font_family_name(ctx, font, family, sizeof family, is_mono, is_serif);

 if (sup) fz_write_string(ctx, out, "<sup>");
 if (is_mono) fz_write_string(ctx, out, "<tt>");
 if (is_bold) fz_write_string(ctx, out, "<b>");
 if (is_italic) fz_write_string(ctx, out, "<i>");
 fz_write_printf(ctx, out, "<span style=\"font-family:%s;font-size:%gpt", family, size);
 if (color != 0)
  fz_write_printf(ctx, out, ";color:#%06x", color);
 fz_write_printf(ctx, out, "\">");
}
