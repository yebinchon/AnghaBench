
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cmap_name; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_context ;


 int nelem (TYPE_1__**) ;
 int strcmp (char const*,int ) ;
 TYPE_1__** table ;

pdf_cmap *
pdf_load_builtin_cmap(fz_context *ctx, const char *name)
{
 int r = nelem(table)-1;
 int l = 0;
 while (l <= r)
 {
  int m = (l + r) >> 1;
  int c = strcmp(name, table[m]->cmap_name);
  if (c < 0)
   r = m - 1;
  else if (c > 0)
   l = m + 1;
  else
   return table[m];
 }
 return ((void*)0);
}
