
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_debug_store_locked (int *) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;

void
fz_debug_store(fz_context *ctx)
{
 fz_lock(ctx, FZ_LOCK_ALLOC);
 fz_debug_store_locked(ctx);
 fz_unlock(ctx, FZ_LOCK_ALLOC);
}
