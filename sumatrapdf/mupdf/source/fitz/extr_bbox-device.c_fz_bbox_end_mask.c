
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_device ;
typedef int fz_context ;
struct TYPE_2__ {scalar_t__ ignore; } ;
typedef TYPE_1__ fz_bbox_device ;


 int assert (int) ;

__attribute__((used)) static void
fz_bbox_end_mask(fz_context *ctx, fz_device *dev)
{
 fz_bbox_device *bdev = (fz_bbox_device*)dev;
 assert(bdev->ignore > 0);
 bdev->ignore--;
}
