
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; float xres; float yres; } ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int bmp_read_image (int *,struct info*,unsigned char const*,size_t,int) ;
 int fz_device_rgb (int *) ;
 int * fz_keep_colorspace (int *,int ) ;

void
fz_load_bmp_info(fz_context *ctx, const unsigned char *p, size_t total, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep)
{
 struct info bmp;

 bmp_read_image(ctx, &bmp, p, total, 1);

 *cspacep = fz_keep_colorspace(ctx, fz_device_rgb(ctx));
 *wp = bmp.width;
 *hp = bmp.height;
 *xresp = bmp.xres / (1000.0f / 25.4f);
 *yresp = bmp.yres / (1000.0f / 25.4f);
}
