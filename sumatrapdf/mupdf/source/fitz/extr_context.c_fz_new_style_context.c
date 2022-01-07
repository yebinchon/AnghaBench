
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* style; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_6__ {int refs; int use_document_css; int * user_css; } ;


 TYPE_3__* fz_malloc_struct (TYPE_1__*,int ) ;
 int fz_style_context ;

__attribute__((used)) static void fz_new_style_context(fz_context *ctx)
{
 if (ctx)
 {
  ctx->style = fz_malloc_struct(ctx, fz_style_context);
  ctx->style->refs = 1;
  ctx->style->user_css = ((void*)0);
  ctx->style->use_document_css = 1;
 }
}
