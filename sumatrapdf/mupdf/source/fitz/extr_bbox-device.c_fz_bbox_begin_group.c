
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_bbox_add_rect (int *,int *,int ,int) ;

__attribute__((used)) static void
fz_bbox_begin_group(fz_context *ctx, fz_device *dev, fz_rect rect, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 fz_bbox_add_rect(ctx, dev, rect, 1);
}
