
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Face ;


 int ft_char_index (int ,int) ;
 int ft_name_index (int ,char const*) ;
 int fz_unicode_from_glyph_name (char const*) ;
 int fz_unicode_from_glyph_name_strict (char const*) ;

__attribute__((used)) static int ft_find_glyph_by_unicode_name(FT_Face face, const char *name)
{
 int unicode, glyph;


 unicode = fz_unicode_from_glyph_name_strict(name);
 if (unicode > 0)
 {
  glyph = ft_char_index(face, unicode);
  if (glyph > 0)
   return glyph;
 }


 glyph = ft_name_index(face, name);
 if (glyph > 0)
  return glyph;


 unicode = fz_unicode_from_glyph_name(name);
 if (unicode > 0)
  return ft_char_index(face, unicode);


 return 0;
}
