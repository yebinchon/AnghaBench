
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ft_face; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int FT_Get_Name_Index (scalar_t__,char*) ;
 int UCDN_GENERAL_CATEGORY_LL ;
 int UCDN_GENERAL_CATEGORY_LT ;
 int fz_encode_character (int *,TYPE_1__*,int) ;
 char* fz_glyph_name_from_unicode_sc (int) ;
 int sprintf (char*,char*,int) ;
 int ucdn_get_general_category (int) ;

int
fz_encode_character_sc(fz_context *ctx, fz_font *font, int unicode)
{
 if (font->ft_face)
 {
  int cat = ucdn_get_general_category(unicode);
  if (cat == UCDN_GENERAL_CATEGORY_LL || cat == UCDN_GENERAL_CATEGORY_LT)
  {
   int glyph;
   const char *name;
   char buf[20];

   name = fz_glyph_name_from_unicode_sc(unicode);
   if (name)
   {
    glyph = FT_Get_Name_Index(font->ft_face, (char*)name);
    if (glyph > 0)
     return glyph;
   }

   sprintf(buf, "uni%04X.sc", unicode);
   glyph = FT_Get_Name_Index(font->ft_face, buf);
   if (glyph > 0)
    return glyph;
  }
 }
 return fz_encode_character(ctx, font, unicode);
}
