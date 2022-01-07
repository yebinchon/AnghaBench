
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_context ;


 int * fz_load_jbig2_subimage (int *,unsigned char const*,size_t,int ) ;

fz_pixmap *
fz_load_jbig2(fz_context *ctx, const unsigned char *buf, size_t len)
{
 return fz_load_jbig2_subimage(ctx, buf, len, 0);
}
