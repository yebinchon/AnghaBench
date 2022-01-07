
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct info {float xres; float yres; } ;
struct TYPE_4__ {float xres; float yres; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 TYPE_1__* bmp_read_image (int *,struct info*,unsigned char const*,size_t,int ) ;

fz_pixmap *
fz_load_bmp(fz_context *ctx, const unsigned char *p, size_t total)
{
 struct info bmp;
 fz_pixmap *image;

 image = bmp_read_image(ctx, &bmp, p, total, 0);
 image->xres = bmp.xres / (1000.0f / 25.4f);
 image->yres = bmp.yres / (1000.0f / 25.4f);

 return image;
}
