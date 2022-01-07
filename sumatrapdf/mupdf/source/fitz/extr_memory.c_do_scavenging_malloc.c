
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int user; void* (* malloc ) (int ,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ alloc; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (TYPE_2__*,int ) ;
 scalar_t__ fz_store_scavenge (TYPE_2__*,size_t,int*) ;
 int fz_unlock (TYPE_2__*,int ) ;
 void* stub1 (int ,size_t) ;

__attribute__((used)) static void *
do_scavenging_malloc(fz_context *ctx, size_t size)
{
 void *p;
 int phase = 0;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 do {
  p = ctx->alloc.malloc(ctx->alloc.user, size);
  if (p != ((void*)0))
  {
   fz_unlock(ctx, FZ_LOCK_ALLOC);
   return p;
  }
 } while (fz_store_scavenge(ctx, size, &phase));
 fz_unlock(ctx, FZ_LOCK_ALLOC);

 return ((void*)0);
}
