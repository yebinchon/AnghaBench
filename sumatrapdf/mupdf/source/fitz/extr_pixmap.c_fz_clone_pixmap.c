
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int h; int stride; int samples; int alpha; int seps; int w; int y; int x; int colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int fz_make_irect (int ,int ,int ,int) ;
 TYPE_1__* fz_new_pixmap_with_bbox (int *,int ,int ,int ,int ) ;
 int memcpy (int ,int ,int) ;

fz_pixmap *fz_clone_pixmap(fz_context *ctx, fz_pixmap *old)
{
 fz_pixmap *pix = fz_new_pixmap_with_bbox(ctx, old->colorspace, fz_make_irect(old->x, old->y, old->w, old->h), old->seps, old->alpha);
 memcpy(pix->samples, old->samples, pix->stride * pix->h);
 return pix;
}
