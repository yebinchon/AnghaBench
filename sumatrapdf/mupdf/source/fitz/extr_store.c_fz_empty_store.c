
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ head; } ;
typedef TYPE_1__ fz_store ;
struct TYPE_8__ {TYPE_1__* store; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int evict (TYPE_2__*,scalar_t__) ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;

void
fz_empty_store(fz_context *ctx)
{
 fz_store *store = ctx->store;

 if (store == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);

 while (store->head)
  evict(ctx, store->head);
 fz_unlock(ctx, FZ_LOCK_ALLOC);
}
