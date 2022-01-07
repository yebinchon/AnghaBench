
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xps_parse_real_num (char*,float*,int*) ;

__attribute__((used)) static char *
xps_parse_glyph_metrics(char *s, float *advance, float *uofs, float *vofs, int bidi_level)
{
 int override;
 if (*s == ',')
 {
  s = xps_parse_real_num(s + 1, advance, &override);
  if (override && (bidi_level & 1))
   *advance = -*advance;
 }
 if (*s == ',')
  s = xps_parse_real_num(s + 1, uofs, &override);
 if (*s == ',')
  s = xps_parse_real_num(s + 1, vofs, &override);
 return s;
}
