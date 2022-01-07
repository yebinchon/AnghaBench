
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_matrix ;
typedef int fz_image ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int fz_stext_fill_image (int *,int *,int *,int ,float,int ) ;

__attribute__((used)) static void
fz_stext_fill_image_mask(fz_context *ctx, fz_device *dev, fz_image *img, fz_matrix ctm,
  fz_colorspace *cspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_stext_fill_image(ctx, dev, img, ctm, alpha, color_params);
}
