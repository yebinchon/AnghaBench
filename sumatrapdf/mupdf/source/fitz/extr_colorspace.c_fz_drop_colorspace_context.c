
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* colorspace; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_10__ {int lab; int cmyk; int bgr; int rgb; int gray; int ctx_refs; } ;


 int fz_drop_colorspace (TYPE_1__*,int ) ;
 int fz_drop_icc_context (TYPE_1__*) ;
 scalar_t__ fz_drop_imp (TYPE_1__*,TYPE_3__*,int *) ;
 int fz_free (TYPE_1__*,TYPE_3__*) ;

void fz_drop_colorspace_context(fz_context *ctx)
{
 if (fz_drop_imp(ctx, ctx->colorspace, &ctx->colorspace->ctx_refs))
 {
  fz_drop_colorspace(ctx, ctx->colorspace->gray);
  fz_drop_colorspace(ctx, ctx->colorspace->rgb);
  fz_drop_colorspace(ctx, ctx->colorspace->bgr);
  fz_drop_colorspace(ctx, ctx->colorspace->cmyk);
  fz_drop_colorspace(ctx, ctx->colorspace->lab);



  fz_free(ctx, ctx->colorspace);
  ctx->colorspace = ((void*)0);
 }
}
