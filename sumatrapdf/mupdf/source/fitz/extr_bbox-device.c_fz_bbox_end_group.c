
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_device ;
typedef int fz_context ;


 int fz_bbox_pop_clip (int *,int *) ;

__attribute__((used)) static void
fz_bbox_end_group(fz_context *ctx, fz_device *dev)
{
 fz_bbox_pop_clip(ctx, dev);
}
