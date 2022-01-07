
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* style; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_8__ {struct TYPE_8__* user_css; int refs; } ;


 scalar_t__ fz_drop_imp (TYPE_1__*,TYPE_3__*,int *) ;
 int fz_free (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static void fz_drop_style_context(fz_context *ctx)
{
 if (!ctx)
  return;
 if (fz_drop_imp(ctx, ctx->style, &ctx->style->refs))
 {
  fz_free(ctx, ctx->style->user_css);
  fz_free(ctx, ctx->style);
 }
}
