
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct TYPE_9__ {int size; } ;
typedef TYPE_1__ fz_store ;
struct TYPE_10__ {TYPE_1__* store; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_stdout (TYPE_2__*) ;
 int fz_unlock (TYPE_2__*,int ) ;
 int fz_write_printf (TYPE_2__*,int ,char*,int) ;
 int scavenge (TYPE_2__*,size_t) ;

int
fz_shrink_store(fz_context *ctx, unsigned int percent)
{
 int success;
 fz_store *store;
 size_t new_size;

 if (percent >= 100)
  return 1;

 store = ctx->store;
 if (store == ((void*)0))
  return 0;




 fz_lock(ctx, FZ_LOCK_ALLOC);

 new_size = (size_t)(((uint64_t)store->size * percent) / 100);
 if (store->size > new_size)
  scavenge(ctx, store->size - new_size);

 success = (store->size <= new_size) ? 1 : 0;
 fz_unlock(ctx, FZ_LOCK_ALLOC);




 return success;
}
