
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xps_parse_digits (char*,int*) ;

__attribute__((used)) static char *
xps_parse_glyph_index(char *s, int *glyph_index)
{
 if (*s >= '0' && *s <= '9')
  s = xps_parse_digits(s, glyph_index);
 return s;
}
