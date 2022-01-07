
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_image ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_bbox_add_rect (int *,int *,int ,int) ;
 int fz_transform_rect (int ,int ) ;
 int fz_unit_rect ;

__attribute__((used)) static void
fz_bbox_clip_image_mask(fz_context *ctx, fz_device *dev, fz_image *image, fz_matrix ctm, fz_rect scissor)
{
 fz_bbox_add_rect(ctx, dev, fz_transform_rect(fz_unit_rect, ctm), 1);
}
