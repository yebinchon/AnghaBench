
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* tree; struct TYPE_3__* dict; struct TYPE_3__* mranges; struct TYPE_3__* xranges; struct TYPE_3__* ranges; int usecmap; } ;
typedef TYPE_1__ pdf_cmap ;
typedef int fz_storable ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_cmap (int *,int ) ;

void
pdf_drop_cmap_imp(fz_context *ctx, fz_storable *cmap_)
{
 pdf_cmap *cmap = (pdf_cmap *)cmap_;
 pdf_drop_cmap(ctx, cmap->usecmap);
 fz_free(ctx, cmap->ranges);
 fz_free(ctx, cmap->xranges);
 fz_free(ctx, cmap->mranges);
 fz_free(ctx, cmap->dict);
 fz_free(ctx, cmap->tree);
 fz_free(ctx, cmap);
}
