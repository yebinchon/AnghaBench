
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int subimages; int member_0; } ;
typedef int fz_context ;


 int pnm_read_image (int *,struct info*,unsigned char const*,size_t,int,int) ;

int
fz_load_pnm_subimage_count(fz_context *ctx, const unsigned char *p, size_t total)
{
 struct info pnm = { 0 };
 (void) pnm_read_image(ctx, &pnm, p, total, 1, -1);
 return pnm.subimages;
}
