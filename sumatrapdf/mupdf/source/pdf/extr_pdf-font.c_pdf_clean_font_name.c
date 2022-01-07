
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const*** base_font_names ;
 scalar_t__ nelem (char const***) ;
 int strcmp_ignore_space (char const*,char const*) ;

const char *pdf_clean_font_name(const char *fontname)
{
 int i, k;
 for (i = 0; i < (int)nelem(base_font_names); i++)
  for (k = 0; base_font_names[i][k]; k++)
   if (!strcmp_ignore_space(base_font_names[i][k], fontname))
    return base_font_names[i][0];
 return fontname;
}
