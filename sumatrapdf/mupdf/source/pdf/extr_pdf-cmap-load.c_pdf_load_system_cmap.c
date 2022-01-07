
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* usecmap_name; int usecmap; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*,char const*) ;
 TYPE_1__* pdf_load_builtin_cmap (int *,char const*) ;
 int pdf_set_usecmap (int *,TYPE_1__*,TYPE_1__*) ;

pdf_cmap *
pdf_load_system_cmap(fz_context *ctx, const char *cmap_name)
{
 pdf_cmap *usecmap;
 pdf_cmap *cmap;

 cmap = pdf_load_builtin_cmap(ctx, cmap_name);
 if (!cmap)
  fz_throw(ctx, FZ_ERROR_GENERIC, "no builtin cmap file: %s", cmap_name);

 if (cmap->usecmap_name[0] && !cmap->usecmap)
 {
  usecmap = pdf_load_system_cmap(ctx, cmap->usecmap_name);
  if (!usecmap)
   fz_throw(ctx, FZ_ERROR_GENERIC, "no builtin cmap file: %s", cmap->usecmap_name);
  pdf_set_usecmap(ctx, cmap, usecmap);
 }

 return cmap;
}
