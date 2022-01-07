
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_separations ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_7__ {scalar_t__ y0; scalar_t__ x0; scalar_t__ y1; scalar_t__ x1; } ;
typedef TYPE_2__ fz_irect ;
typedef int fz_context ;
typedef int fz_colorspace ;


 TYPE_1__* fz_new_pixmap (int *,int *,scalar_t__,scalar_t__,int *,int) ;

fz_pixmap *
fz_new_pixmap_with_bbox(fz_context *ctx, fz_colorspace *colorspace, fz_irect bbox, fz_separations *seps, int alpha)
{
 fz_pixmap *pixmap;
 pixmap = fz_new_pixmap(ctx, colorspace, bbox.x1 - bbox.x0, bbox.y1 - bbox.y0, seps, alpha);
 pixmap->x = bbox.x0;
 pixmap->y = bbox.y0;
 return pixmap;
}
