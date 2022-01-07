
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int user; TYPE_3__* (* malloc ) (int ,int) ;} ;
struct TYPE_19__ {scalar_t__ lock; scalar_t__ unlock; } ;
struct TYPE_20__ {TYPE_1__ alloc; TYPE_2__ locks; } ;
typedef TYPE_3__ fz_context ;
struct TYPE_21__ {scalar_t__ lock; scalar_t__ unlock; } ;


 int fz_init_error_context (TYPE_3__*) ;
 int fz_keep_colorspace_context (TYPE_3__*) ;
 int fz_keep_document_handler_context (TYPE_3__*) ;
 int fz_keep_font_context (TYPE_3__*) ;
 int fz_keep_glyph_cache (TYPE_3__*) ;
 int fz_keep_store_context (TYPE_3__*) ;
 int fz_keep_style_context (TYPE_3__*) ;
 int fz_keep_tuning_context (TYPE_3__*) ;
 TYPE_7__ fz_locks_default ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 TYPE_3__* stub1 (int ,int) ;

fz_context *
fz_clone_context(fz_context *ctx)
{
 fz_context *new_ctx;



 if (ctx == ((void*)0) || (ctx->locks.lock == fz_locks_default.lock && ctx->locks.unlock == fz_locks_default.unlock))
  return ((void*)0);

 new_ctx = ctx->alloc.malloc(ctx->alloc.user, sizeof(fz_context));
 if (!new_ctx)
  return ((void*)0);


 memcpy(new_ctx, ctx, sizeof (fz_context));


 fz_init_error_context(new_ctx);


 fz_keep_document_handler_context(new_ctx);
 fz_keep_style_context(new_ctx);
 fz_keep_tuning_context(new_ctx);
 fz_keep_font_context(new_ctx);
 fz_keep_colorspace_context(new_ctx);
 fz_keep_store_context(new_ctx);
 fz_keep_glyph_cache(new_ctx);

 return new_ctx;
}
