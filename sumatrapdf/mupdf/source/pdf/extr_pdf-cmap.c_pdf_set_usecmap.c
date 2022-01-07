
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ codespace_len; int * codespace; int usecmap; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_context ;


 int pdf_drop_cmap (int *,int ) ;
 int pdf_keep_cmap (int *,TYPE_1__*) ;

void
pdf_set_usecmap(fz_context *ctx, pdf_cmap *cmap, pdf_cmap *usecmap)
{
 int i;

 pdf_drop_cmap(ctx, cmap->usecmap);
 cmap->usecmap = pdf_keep_cmap(ctx, usecmap);

 if (cmap->codespace_len == 0)
 {
  cmap->codespace_len = usecmap->codespace_len;
  for (i = 0; i < usecmap->codespace_len; i++)
   cmap->codespace[i] = usecmap->codespace[i];
 }
}
