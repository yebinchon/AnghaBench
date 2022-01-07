
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int storable; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_context ;


 TYPE_1__* fz_keep_storable (int *,int *) ;

pdf_cmap *
pdf_keep_cmap(fz_context *ctx, pdf_cmap *cmap)
{
 return fz_keep_storable(ctx, &cmap->storable);
}
