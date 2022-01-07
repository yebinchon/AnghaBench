
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int aa; } ;
typedef TYPE_1__ fz_context ;


 int fz_set_rasterizer_graphics_aa_level (TYPE_1__*,int *,int) ;
 int fz_set_rasterizer_text_aa_level (TYPE_1__*,int *,int) ;

void
fz_set_aa_level(fz_context *ctx, int level)
{
 fz_set_rasterizer_graphics_aa_level(ctx, &ctx->aa, level);
 fz_set_rasterizer_text_aa_level(ctx, &ctx->aa, level);
}
