
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* image; } ;
typedef TYPE_1__ img_page ;
struct TYPE_7__ {int x1; int y1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_page ;
struct TYPE_8__ {int w; int h; } ;
typedef TYPE_3__ fz_image ;
typedef int fz_context ;


 int DPI ;
 int fz_image_resolution (TYPE_3__*,int*,int*) ;

__attribute__((used)) static fz_rect
img_bound_page(fz_context *ctx, fz_page *page_)
{
 img_page *page = (img_page*)page_;
 fz_image *image = page->image;
 int xres, yres;
 fz_rect bbox;

 fz_image_resolution(image, &xres, &yres);
 bbox.x0 = bbox.y0 = 0;
 bbox.x1 = image->w * DPI / xres;
 bbox.y1 = image->h * DPI / yres;
 return bbox;
}
