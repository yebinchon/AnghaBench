
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* image; } ;
typedef TYPE_1__ img_page ;
typedef int fz_page ;
typedef int fz_matrix ;
struct TYPE_6__ {int w; int h; } ;
typedef TYPE_2__ fz_image ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int DPI ;
 int fz_default_color_params ;
 int fz_fill_image (int *,int *,TYPE_2__*,int ,int,int ) ;
 int fz_image_resolution (TYPE_2__*,int*,int*) ;
 int fz_pre_scale (int ,float,float) ;

__attribute__((used)) static void
img_run_page(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 img_page *page = (img_page*)page_;
 fz_image *image = page->image;
 int xres, yres;
 float w, h;

 fz_image_resolution(image, &xres, &yres);
 w = image->w * DPI / xres;
 h = image->h * DPI / yres;
 ctm = fz_pre_scale(ctm, w, h);
 fz_fill_image(ctx, dev, image, ctm, 1, fz_default_color_params);
}
