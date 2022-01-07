
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ft_face; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int ft_char_index (scalar_t__,int ) ;
 int ft_name_index (scalar_t__,char const*) ;
 int fz_unicode_from_glyph_name (char const*) ;

int
fz_encode_character_by_glyph_name(fz_context *ctx, fz_font *font, const char *glyphname)
{
 int glyph = 0;
 if (font->ft_face)
 {
  glyph = ft_name_index(font->ft_face, glyphname);
  if (glyph == 0)
   glyph = ft_char_index(font->ft_face, fz_unicode_from_glyph_name(glyphname));
 }

 return glyph;
}
