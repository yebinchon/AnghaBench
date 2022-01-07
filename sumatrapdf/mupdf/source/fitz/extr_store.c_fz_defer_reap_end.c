
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* store; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_7__ {scalar_t__ defer_reap_count; scalar_t__ needs_reaping; } ;


 int FZ_LOCK_ALLOC ;
 int do_reap (TYPE_2__*) ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;

void fz_defer_reap_end(fz_context *ctx)
{
 int reap;

 if (ctx->store == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 --ctx->store->defer_reap_count;
 reap = ctx->store->defer_reap_count == 0 && ctx->store->needs_reaping;
 if (reap)
  do_reap(ctx);
 else
  fz_unlock(ctx, FZ_LOCK_ALLOC);
}
