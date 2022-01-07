
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int member_0; } ;
typedef int fz_pixmap ;
typedef int fz_context ;


 int * jbig2_read_image (int *,struct info*,unsigned char const*,size_t,int ,int) ;

fz_pixmap *
fz_load_jbig2_subimage(fz_context *ctx, const unsigned char *buf, size_t len, int subimage)
{
 struct info jbig2 = { 0 };
 return jbig2_read_image(ctx, &jbig2, buf, len, 0, subimage);
}
