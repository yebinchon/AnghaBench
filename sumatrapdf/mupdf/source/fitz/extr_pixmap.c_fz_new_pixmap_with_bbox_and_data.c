
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_separations ;
struct TYPE_6__ {int x; scalar_t__ y; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_7__ {int x1; int x0; scalar_t__ y0; scalar_t__ y1; } ;
typedef TYPE_2__ fz_irect ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_colorspace_n (int *,int *) ;
 int fz_count_active_separations (int *,int *) ;
 TYPE_1__* fz_new_pixmap_with_data (int *,int *,int,scalar_t__,int *,int,int,unsigned char*) ;

fz_pixmap *
fz_new_pixmap_with_bbox_and_data(fz_context *ctx, fz_colorspace *colorspace, fz_irect bbox, fz_separations *seps, int alpha, unsigned char *samples)
{
 int w = bbox.x1 - bbox.x0;
 int stride;
 int s = fz_count_active_separations(ctx, seps);
 fz_pixmap *pixmap;
 if (!colorspace && s == 0) alpha = 1;
 stride = (fz_colorspace_n(ctx, colorspace) + s + alpha) * w;
 pixmap = fz_new_pixmap_with_data(ctx, colorspace, w, bbox.y1 - bbox.y0, seps, alpha, stride, samples);
 pixmap->x = bbox.x0;
 pixmap->y = bbox.y0;
 return pixmap;
}
