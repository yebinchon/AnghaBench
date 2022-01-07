
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

void
fz_load_jxr_info(fz_context *ctx, const unsigned char *data, size_t size, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "JPEG-XR codec is not available");
}
