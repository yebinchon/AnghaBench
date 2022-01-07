
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page; } ;
typedef TYPE_1__ fz_stext_device ;
typedef int fz_matrix ;
typedef int fz_image ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_color_params ;


 int add_image_block_to_page (int *,int ,int ,int *) ;

__attribute__((used)) static void
fz_stext_fill_image(fz_context *ctx, fz_device *dev, fz_image *img, fz_matrix ctm, float alpha, fz_color_params color_params)
{
 fz_stext_device *tdev = (fz_stext_device*)dev;


 if (alpha < 0.5f)
  return;

 add_image_block_to_page(ctx, tdev->page, ctm, img);
}
