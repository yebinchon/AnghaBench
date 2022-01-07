
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; int cs; int member_0; } ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * fz_keep_colorspace (int *,int ) ;
 int pnm_read_image (int *,struct info*,unsigned char const*,size_t,int,int ) ;

void
fz_load_pnm_info(fz_context *ctx, const unsigned char *p, size_t total, int *wp, int *hp, int *xresp, int *yresp, fz_colorspace **cspacep)
{
 struct info pnm = { 0 };
 (void) pnm_read_image(ctx, &pnm, p, total, 1, 0);
 *cspacep = fz_keep_colorspace(ctx, pnm.cs);
 *wp = pnm.width;
 *hp = pnm.height;
 *xresp = 72;
 *yresp = 72;
}
