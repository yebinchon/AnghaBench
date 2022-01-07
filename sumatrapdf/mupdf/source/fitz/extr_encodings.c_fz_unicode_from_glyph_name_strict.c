
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nelem (int *) ;
 int* single_code_list ;
 int * single_name_list ;
 int strcmp (char const*,int ) ;

int
fz_unicode_from_glyph_name_strict(const char *name)
{
 int l = 0;
 int r = nelem(single_name_list) - 1;

 while (l <= r)
 {
  int m = (l + r) >> 1;
  int c = strcmp(name, single_name_list[m]);
  if (c < 0)
   r = m - 1;
  else if (c > 0)
   l = m + 1;
  else
   return single_code_list[m];
 }
 return 0;
}
