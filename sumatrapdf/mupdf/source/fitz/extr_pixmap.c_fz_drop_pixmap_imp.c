
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_3__ {int flags; int underlying; struct TYPE_3__* samples; int seps; int colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int FZ_PIXMAP_FLAG_FREE_SAMPLES ;
 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_pixmap (int *,int ) ;
 int fz_drop_separations (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_pixmap_imp(fz_context *ctx, fz_storable *pix_)
{
 fz_pixmap *pix = (fz_pixmap *)pix_;

 fz_drop_colorspace(ctx, pix->colorspace);
 fz_drop_separations(ctx, pix->seps);
 if (pix->flags & FZ_PIXMAP_FLAG_FREE_SAMPLES)
  fz_free(ctx, pix->samples);
 fz_drop_pixmap(ctx, pix->underlying);
 fz_free(ctx, pix);
}
