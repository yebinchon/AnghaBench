
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fz_atof (char const*) ;

const char *
svg_lex_number(float *fp, const char *ss)
{
 const char *s = ss;
 if (*s == '-')
  ++s;
 while (*s >= '0' && *s <= '9')
  ++s;
 if (*s == '.') {
  ++s;
  while (*s >= '0' && *s <= '9')
   ++s;
 }
 if (*s == 'e' || *s == 'E') {
  ++s;
  if (*s == '+' || *s == '-')
   ++s;
  while (*s >= '0' && *s <= '9')
   ++s;
 }
 *fp = fz_atof(ss);
 return s;
}
