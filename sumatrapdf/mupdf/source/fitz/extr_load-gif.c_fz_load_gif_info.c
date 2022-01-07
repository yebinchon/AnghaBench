
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; int xres; int yres; } ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_device_rgb (int *) ;
 int * fz_keep_colorspace (int *,int ) ;
 int gif_read_image (int *,struct info*,unsigned char const*,size_t,int) ;

void
fz_load_gif_info(fz_context *ctx, const unsigned char *p, size_t total, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep)
{
 struct info gif;

 gif_read_image(ctx, &gif, p, total, 1);
 *cspacep = fz_keep_colorspace(ctx, fz_device_rgb(ctx));
 *wp = gif.width;
 *hp = gif.height;
 *xresp = gif.xres;
 *yresp = gif.yres;
}
