
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int user; int (* free ) (int ,TYPE_3__*) ;} ;
struct TYPE_14__ {scalar_t__ top; scalar_t__ stack; } ;
struct TYPE_16__ {TYPE_2__ alloc; TYPE_1__ error; } ;
typedef TYPE_3__ fz_context ;


 int assert (int) ;
 int fz_drop_colorspace_context (TYPE_3__*) ;
 int fz_drop_document_handler_context (TYPE_3__*) ;
 int fz_drop_font_context (TYPE_3__*) ;
 int fz_drop_glyph_cache_context (TYPE_3__*) ;
 int fz_drop_store_context (TYPE_3__*) ;
 int fz_drop_style_context (TYPE_3__*) ;
 int fz_drop_tuning_context (TYPE_3__*) ;
 int fz_flush_warnings (TYPE_3__*) ;
 int stub1 (int ,TYPE_3__*) ;

void
fz_drop_context(fz_context *ctx)
{
 if (!ctx)
  return;


 fz_drop_document_handler_context(ctx);
 fz_drop_glyph_cache_context(ctx);
 fz_drop_store_context(ctx);
 fz_drop_style_context(ctx);
 fz_drop_tuning_context(ctx);
 fz_drop_colorspace_context(ctx);
 fz_drop_font_context(ctx);

 fz_flush_warnings(ctx);

 assert(ctx->error.top == ctx->error.stack);


 ctx->alloc.free(ctx->alloc.user, ctx);
}
