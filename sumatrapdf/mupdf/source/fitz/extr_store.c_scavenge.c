
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* tail; } ;
typedef TYPE_2__ fz_store ;
struct TYPE_10__ {scalar_t__ size; TYPE_1__* val; struct TYPE_10__* prev; } ;
typedef TYPE_3__ fz_item ;
struct TYPE_11__ {TYPE_2__* store; } ;
typedef TYPE_4__ fz_context ;
struct TYPE_8__ {int refs; } ;


 int evict (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int
scavenge(fz_context *ctx, size_t tofree)
{
 fz_store *store = ctx->store;
 size_t count = 0;
 fz_item *item, *prev;


 for (item = store->tail; item; item = prev)
 {
  prev = item->prev;
  if (item->val->refs == 1)
  {

   count += item->size;
   evict(ctx, item);

   if (count >= tofree)
    break;



   prev = store->tail;
  }
 }

 return count != 0;
}
