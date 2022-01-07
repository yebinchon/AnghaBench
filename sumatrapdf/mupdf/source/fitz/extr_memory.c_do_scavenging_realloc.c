
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int user; void* (* realloc ) (int ,void*,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ alloc; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (TYPE_2__*,int ) ;
 scalar_t__ fz_store_scavenge (TYPE_2__*,size_t,int*) ;
 int fz_unlock (TYPE_2__*,int ) ;
 void* stub1 (int ,void*,size_t) ;

__attribute__((used)) static void *
do_scavenging_realloc(fz_context *ctx, void *p, size_t size)
{
 void *q;
 int phase = 0;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 do {
  q = ctx->alloc.realloc(ctx->alloc.user, p, size);
  if (q != ((void*)0))
  {
   fz_unlock(ctx, FZ_LOCK_ALLOC);
   return q;
  }
 } while (fz_store_scavenge(ctx, size, &phase));
 fz_unlock(ctx, FZ_LOCK_ALLOC);

 return ((void*)0);
}
