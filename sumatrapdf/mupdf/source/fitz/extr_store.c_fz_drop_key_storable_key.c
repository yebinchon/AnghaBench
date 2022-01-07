
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ refs; int (* drop ) (int *,TYPE_2__*) ;} ;
struct TYPE_5__ {scalar_t__ store_key_refs; TYPE_2__ storable; } ;
typedef TYPE_1__ fz_key_storable ;
typedef int fz_context ;


 int FZ_LOCK_ALLOC ;
 int Memento_dropRef (TYPE_1__*) ;
 int assert (int) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;
 int stub1 (int *,TYPE_2__*) ;

void fz_drop_key_storable_key(fz_context *ctx, const fz_key_storable *sc)
{


 fz_key_storable *s = (fz_key_storable *)sc;
 int drop;

 if (s == ((void*)0))
  return;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 assert(s->store_key_refs > 0 && s->storable.refs >= s->store_key_refs);
 (void)Memento_dropRef(s);
 drop = --s->storable.refs == 0;
 --s->store_key_refs;
 fz_unlock(ctx, FZ_LOCK_ALLOC);







 if (drop)
  s->storable.drop(ctx, &s->storable);
}
