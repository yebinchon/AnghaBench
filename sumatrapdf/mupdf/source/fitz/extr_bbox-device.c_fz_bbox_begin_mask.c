
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_2__ {int ignore; } ;
typedef TYPE_1__ fz_bbox_device ;


 int fz_bbox_add_rect (int *,int *,int ,int) ;

__attribute__((used)) static void
fz_bbox_begin_mask(fz_context *ctx, fz_device *dev, fz_rect rect, int luminosity, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 fz_bbox_device *bdev = (fz_bbox_device*)dev;
 fz_bbox_add_rect(ctx, dev, rect, 1);
 bdev->ignore++;
}
