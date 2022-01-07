
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* font; } ;
typedef TYPE_2__ pdf_font_desc ;
typedef int fz_context ;
struct TYPE_6__ {int fake_bold; int is_bold; int fake_italic; int is_italic; int is_mono; int is_serif; int ft_substitute; int ft_stretch; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;


 int FZ_ERROR_SYNTAX ;
 TYPE_4__* fz_load_system_font (int *,char const*,int,int,int ) ;
 TYPE_4__* fz_new_font_from_memory (int *,char const*,unsigned char const*,int,int ,int) ;
 int fz_throw (int *,int ,char*) ;
 unsigned char* pdf_lookup_substitute_font (int *,int,int,int,int,int*) ;

__attribute__((used)) static void
pdf_load_substitute_font(fz_context *ctx, pdf_font_desc *fontdesc, const char *fontname, int mono, int serif, int bold, int italic)
{
 fontdesc->font = fz_load_system_font(ctx, fontname, bold, italic, 0);
 if (!fontdesc->font)
 {
  const unsigned char *data;
  int len;

  data = pdf_lookup_substitute_font(ctx, mono, serif, bold, italic, &len);
  if (!data)
   fz_throw(ctx, FZ_ERROR_SYNTAX, "cannot find substitute font");

  fontdesc->font = fz_new_font_from_memory(ctx, fontname, data, len, 0, 1);
  fontdesc->font->flags.fake_bold = bold && !fontdesc->font->flags.is_bold;
  fontdesc->font->flags.fake_italic = italic && !fontdesc->font->flags.is_italic;

  fontdesc->font->flags.is_mono = mono;
  fontdesc->font->flags.is_serif = serif;
  fontdesc->font->flags.is_bold = bold;
  fontdesc->font->flags.is_italic = italic;
 }

 fontdesc->font->flags.ft_substitute = 1;
 fontdesc->font->flags.ft_stretch = 1;
}
