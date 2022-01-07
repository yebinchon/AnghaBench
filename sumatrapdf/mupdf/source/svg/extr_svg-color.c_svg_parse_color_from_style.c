
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svg_document ;
typedef int fz_context ;


 scalar_t__ strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;
 scalar_t__ svg_is_whitespace (char const) ;
 int svg_parse_color (int *,int *,char const*,float*) ;

void
svg_parse_color_from_style(fz_context *ctx, svg_document *doc, const char *str,
 int *fill_is_set, float fill[3],
 int *stroke_is_set, float stroke[3])
{
 const char *p;

 p = strstr(str, "fill:");
 if (p)
 {
  p += 5;
  while (*p && svg_is_whitespace(*p))
   ++p;
  if (strncmp(p, "none", 4) != 0)
  {
   svg_parse_color(ctx, doc, p, fill);
   *fill_is_set = 1;
  }
 }

 p = strstr(str, "stroke:");
 if (p)
 {
  p += 7;
  while (*p && svg_is_whitespace(*p))
   ++p;
  if (strncmp(p, "none", 4) != 0)
  {
   svg_parse_color(ctx, doc, p, stroke);
   *stroke_is_set = 1;
  }
 }
}
