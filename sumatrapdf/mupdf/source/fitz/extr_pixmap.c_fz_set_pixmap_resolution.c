
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xres; int yres; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;



void
fz_set_pixmap_resolution(fz_context *ctx, fz_pixmap *pix, int xres, int yres)
{
 pix->xres = xres;
 pix->yres = yres;
}
