
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* store; } ;
typedef TYPE_2__ fz_context ;
struct TYPE_6__ {int defer_reap_count; } ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;

void fz_defer_reap_start(fz_context *ctx)
{
 if (ctx->store == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 ctx->store->defer_reap_count++;
 fz_unlock(ctx, FZ_LOCK_ALLOC);
}
