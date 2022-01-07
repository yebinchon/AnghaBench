
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



int fz_is_page_range(fz_context *ctx, const char *s)
{

 while (*s)
 {
  if ((*s < '0' || *s > '9') && *s != 'N' && *s != '-' && *s != ',')
   return 0;
  s++;
 }
 return 1;
}
