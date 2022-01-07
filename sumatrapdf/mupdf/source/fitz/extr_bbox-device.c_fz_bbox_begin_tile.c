
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_2__ {int ignore; } ;
typedef TYPE_1__ fz_bbox_device ;


 int fz_bbox_add_rect (int *,int *,int ,int ) ;
 int fz_transform_rect (int ,int ) ;

__attribute__((used)) static int
fz_bbox_begin_tile(fz_context *ctx, fz_device *dev, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm, int id)
{
 fz_bbox_device *bdev = (fz_bbox_device*)dev;
 fz_bbox_add_rect(ctx, dev, fz_transform_rect(area, ctm), 0);
 bdev->ignore++;
 return 0;
}
