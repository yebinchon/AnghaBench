
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_shade ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_color_params ;


 int fz_bbox_add_rect (int *,int *,int ,int ) ;
 int fz_bound_shade (int *,int *,int ) ;

__attribute__((used)) static void
fz_bbox_fill_shade(fz_context *ctx, fz_device *dev, fz_shade *shade, fz_matrix ctm, float alpha, fz_color_params color_params)
{
 fz_bbox_add_rect(ctx, dev, fz_bound_shade(ctx, shade, ctm), 0);
}
