
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_device ;
typedef int fz_context ;
struct TYPE_2__ {scalar_t__ top; } ;
typedef TYPE_1__ fz_bbox_device ;


 int fz_warn (int *,char*) ;

__attribute__((used)) static void
fz_bbox_pop_clip(fz_context *ctx, fz_device *dev)
{
 fz_bbox_device *bdev = (fz_bbox_device*)dev;
 if (bdev->top > 0)
  bdev->top--;
 else
  fz_warn(ctx, "unexpected pop clip");
}
