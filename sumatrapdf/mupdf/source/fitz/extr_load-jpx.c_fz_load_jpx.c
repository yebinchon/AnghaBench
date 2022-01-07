
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

fz_pixmap *
fz_load_jpx(fz_context *ctx, const unsigned char *data, size_t size, fz_colorspace *defcs)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "JPX support disabled");
}
