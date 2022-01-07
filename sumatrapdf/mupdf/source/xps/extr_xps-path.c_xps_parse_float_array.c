
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_context ;


 float fz_strtof (char*,char**) ;

__attribute__((used)) static char *
xps_parse_float_array(fz_context *ctx, xps_document *doc, char *s, int num, float *x)
{
 int k = 0;

 if (s == ((void*)0) || *s == 0)
  return ((void*)0);

 while (*s)
 {
  while (*s == 0x0d || *s == '\t' || *s == ' ' || *s == 0x0a)
   s++;
  x[k] = fz_strtof(s, &s);
  while (*s == 0x0d || *s == '\t' || *s == ' ' || *s == 0x0a)
   s++;
  if (*s == ',')
   s++;
  if (++k == num)
   break;
 }
 return s;
}
