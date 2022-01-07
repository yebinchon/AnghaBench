
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_text ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_bbox_add_rect (int *,int *,int ,int ) ;
 int fz_bound_text (int *,int const*,int *,int ) ;

__attribute__((used)) static void
fz_bbox_fill_text(fz_context *ctx, fz_device *dev, const fz_text *text, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_bbox_add_rect(ctx, dev, fz_bound_text(ctx, text, ((void*)0), ctm), 0);
}
