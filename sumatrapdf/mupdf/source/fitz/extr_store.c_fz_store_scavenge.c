
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; int max; } ;
typedef TYPE_1__ fz_store ;
struct TYPE_10__ {TYPE_1__* store; } ;
typedef TYPE_2__ fz_context ;


 int FZ_STORE_UNLIMITED ;
 int Memento_listBlocks () ;
 int Memento_stats () ;
 size_t SIZE_MAX ;
 int fz_debug_store (TYPE_2__*) ;
 int fz_debug_store_locked (TYPE_2__*) ;
 int fz_stdout (TYPE_2__*) ;
 int fz_write_printf (TYPE_2__*,int ,char*,size_t,...) ;
 int printf (char*) ;
 scalar_t__ scavenge (TYPE_2__*,size_t) ;

int fz_store_scavenge(fz_context *ctx, size_t size, int *phase)
{
 fz_store *store;
 size_t max;

 store = ctx->store;
 if (store == ((void*)0))
  return 0;






 do
 {
  size_t tofree;


  if (*phase >= 16)
   max = 0;
  else if (store->max != FZ_STORE_UNLIMITED)
   max = store->max / 16 * (16 - *phase);
  else
   max = store->size / (16 - *phase) * (15 - *phase);
  (*phase)++;


  if (size > SIZE_MAX - store->size)
   tofree = SIZE_MAX - max;
  else if (size + store->size > max)
   continue;
  else
   tofree = size + store->size - max;

  if (scavenge(ctx, tofree))
  {





   return 1;
  }
 }
 while (max > 0);






 return 0;
}
