
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x1; int y1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_page ;
struct TYPE_7__ {int w; int h; } ;
typedef TYPE_2__ fz_image ;
typedef int fz_context ;
struct TYPE_8__ {TYPE_2__* image; } ;
typedef TYPE_3__ cbz_page ;


 int DPI ;
 int fz_image_resolution (TYPE_2__*,int*,int*) ;

__attribute__((used)) static fz_rect
cbz_bound_page(fz_context *ctx, fz_page *page_)
{
 cbz_page *page = (cbz_page*)page_;
 fz_image *image = page->image;
 int xres, yres;
 fz_rect bbox;

 fz_image_resolution(image, &xres, &yres);
 bbox.x0 = bbox.y0 = 0;
 bbox.x1 = image->w * DPI / xres;
 bbox.y1 = image->h * DPI / yres;
 return bbox;
}
