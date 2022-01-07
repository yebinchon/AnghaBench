
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* colorspace; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_8__ {int ctx_refs; } ;
typedef TYPE_2__ fz_colorspace_context ;


 int fz_keep_imp (TYPE_1__*,TYPE_2__*,int *) ;

fz_colorspace_context *fz_keep_colorspace_context(fz_context *ctx)
{
 fz_keep_imp(ctx, ctx->colorspace, &ctx->colorspace->ctx_refs);
 return ctx->colorspace;
}
