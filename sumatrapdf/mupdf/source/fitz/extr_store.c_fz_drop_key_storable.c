
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ refs; int (* drop ) (TYPE_3__*,TYPE_5__*) ;} ;
struct TYPE_13__ {scalar_t__ store_key_refs; TYPE_5__ storable; } ;
typedef TYPE_2__ fz_key_storable ;
struct TYPE_14__ {TYPE_1__* store; } ;
typedef TYPE_3__ fz_context ;
struct TYPE_12__ {scalar_t__ defer_reap_count; int needs_reaping; } ;


 int FZ_LOCK_ALLOC ;
 int Memento_dropRef (TYPE_2__*) ;
 int do_reap (TYPE_3__*) ;
 int fz_lock (TYPE_3__*,int ) ;
 int fz_unlock (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,TYPE_5__*) ;

void fz_drop_key_storable(fz_context *ctx, const fz_key_storable *sc)
{


 fz_key_storable *s = (fz_key_storable *)sc;
 int drop;
 int unlock = 1;

 if (s == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 if (s->storable.refs > 0)
 {
  (void)Memento_dropRef(s);
  drop = --s->storable.refs == 0;
  if (!drop && s->storable.refs == s->store_key_refs)
  {
   if (ctx->store->defer_reap_count > 0)
   {
    ctx->store->needs_reaping = 1;
   }
   else
   {
    do_reap(ctx);
    unlock = 0;
   }
  }
 }
 else
  drop = 0;
 if (unlock)
  fz_unlock(ctx, FZ_LOCK_ALLOC);







 if (drop)
  s->storable.drop(ctx, &s->storable);
}
