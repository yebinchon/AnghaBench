
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_load_jbig2_info_subimage (int *,unsigned char const*,size_t,int*,int*,int*,int*,int **,int ) ;

void
fz_load_jbig2_info(fz_context *ctx, const unsigned char *buf, size_t len, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep)
{
 fz_load_jbig2_info_subimage(ctx, buf, len, wp, hp, xresp, yresp, cspacep, 0);
}
