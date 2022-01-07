
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int member_0; } ;
typedef int fz_pixmap ;
typedef int fz_context ;


 int * pnm_read_image (int *,struct info*,unsigned char const*,size_t,int ,int ) ;

fz_pixmap *
fz_load_pnm(fz_context *ctx, const unsigned char *p, size_t total)
{
 struct info pnm = { 0 };
 return pnm_read_image(ctx, &pnm, p, total, 0, 0);
}
