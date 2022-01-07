
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* store; } ;
typedef TYPE_1__ fz_context ;
struct TYPE_10__ {int hash; int refs; } ;


 int fz_drop_hash_table (TYPE_1__*,int ) ;
 scalar_t__ fz_drop_imp (TYPE_1__*,TYPE_3__*,int *) ;
 int fz_empty_store (TYPE_1__*) ;
 int fz_free (TYPE_1__*,TYPE_3__*) ;

void
fz_drop_store_context(fz_context *ctx)
{
 if (!ctx)
  return;
 if (fz_drop_imp(ctx, ctx->store, &ctx->store->refs))
 {
  fz_empty_store(ctx);
  fz_drop_hash_table(ctx, ctx->store->hash);
  fz_free(ctx, ctx->store);
  ctx->store = ((void*)0);
 }
}
