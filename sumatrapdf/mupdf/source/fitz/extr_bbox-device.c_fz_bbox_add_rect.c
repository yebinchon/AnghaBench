
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_2__ {int top; int * stack; int * result; int ignore; } ;
typedef TYPE_1__ fz_bbox_device ;


 int STACK_SIZE ;
 int fz_intersect_rect (int ,int ) ;
 int fz_union_rect (int ,int ) ;

__attribute__((used)) static void
fz_bbox_add_rect(fz_context *ctx, fz_device *dev, fz_rect rect, int clip)
{
 fz_bbox_device *bdev = (fz_bbox_device*)dev;

 if (0 < bdev->top && bdev->top <= STACK_SIZE)
 {
  rect = fz_intersect_rect(rect, bdev->stack[bdev->top-1]);
 }
 if (!clip && bdev->top <= STACK_SIZE && !bdev->ignore)
 {
  *bdev->result = fz_union_rect(*bdev->result, rect);
 }
 if (clip && ++bdev->top <= STACK_SIZE)
 {
  bdev->stack[bdev->top-1] = rect;
 }
}
