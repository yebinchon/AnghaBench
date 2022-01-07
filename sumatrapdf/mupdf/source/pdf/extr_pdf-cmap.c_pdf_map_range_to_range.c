
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_cmap ;
typedef int fz_context ;


 int add_range (int *,int *,unsigned int,unsigned int,int,int,int ) ;

void
pdf_map_range_to_range(fz_context *ctx, pdf_cmap *cmap, unsigned int low, unsigned int high, int out)
{
 add_range(ctx, cmap, low, high, out, 1, 0);
}
