
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; int xres; int yres; int cspace; int member_0; } ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_keep_colorspace (int *,int ) ;
 int jbig2_read_image (int *,struct info*,unsigned char const*,size_t,int,int) ;

void
fz_load_jbig2_info_subimage(fz_context *ctx, const unsigned char *buf, size_t len, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep, int subimage)
{
 struct info jbig2 = { 0 };

 jbig2_read_image(ctx, &jbig2, buf, len, 1, subimage);
 *cspacep = fz_keep_colorspace(ctx, jbig2.cspace);
 *wp = jbig2.width;
 *hp = jbig2.height;
 *xresp = jbig2.xres;
 *yresp = jbig2.yres;
}
