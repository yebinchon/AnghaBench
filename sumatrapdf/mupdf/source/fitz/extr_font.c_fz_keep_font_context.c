
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_font_context ;
struct TYPE_5__ {TYPE_3__* font; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int ctx_refs; } ;


 int * fz_keep_imp (TYPE_1__*,TYPE_3__*,int *) ;

fz_font_context *
fz_keep_font_context(fz_context *ctx)
{
 if (!ctx)
  return ((void*)0);
 return fz_keep_imp(ctx, ctx->font, &ctx->font->ctx_refs);
}
