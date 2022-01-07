
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int refs; int (* drop ) (TYPE_3__*,TYPE_2__*) ;} ;
typedef TYPE_2__ fz_storable ;
struct TYPE_14__ {TYPE_1__* store; } ;
typedef TYPE_3__ fz_context ;
struct TYPE_12__ {scalar_t__ max; scalar_t__ size; } ;


 int FZ_LOCK_ALLOC ;
 scalar_t__ FZ_STORE_UNLIMITED ;
 int Memento_dropIntRef (TYPE_2__*) ;
 int fz_lock (TYPE_3__*,int ) ;
 int fz_unlock (TYPE_3__*,int ) ;
 int scavenge (TYPE_3__*,scalar_t__) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;

void
fz_drop_storable(fz_context *ctx, const fz_storable *sc)
{


 fz_storable *s = (fz_storable *)sc;
 int num;

 if (s == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);


 if (s->refs > 0)
 {
  (void)Memento_dropIntRef(s);
  num = --s->refs;
 }
 else
  num = -1;






 if (ctx->store->max != FZ_STORE_UNLIMITED)
  if (num == 1 && ctx->store->size > ctx->store->max)
   scavenge(ctx, ctx->store->size - ctx->store->max);
 fz_unlock(ctx, FZ_LOCK_ALLOC);







 if (num == 0)
  s->drop(ctx, s);
}
