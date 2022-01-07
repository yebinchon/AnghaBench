
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct info {int yres; int xres; } ;
struct TYPE_4__ {int yres; int xres; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 TYPE_1__* gif_read_image (int *,struct info*,unsigned char const*,size_t,int ) ;

fz_pixmap *
fz_load_gif(fz_context *ctx, const unsigned char *p, size_t total)
{
 fz_pixmap *image;
 struct info gif;

 image = gif_read_image(ctx, &gif, p, total, 0);
 image->xres = gif.xres;
 image->yres = gif.yres;

 return image;
}
