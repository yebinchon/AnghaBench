
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (int *,int ) ;
 int fz_store_scavenge (int *,size_t,int*) ;
 int fz_unlock (int *,int ) ;

int fz_store_scavenge_external(fz_context *ctx, size_t size, int *phase)
{
 int ret;

 fz_lock(ctx, FZ_LOCK_ALLOC);
 ret = fz_store_scavenge(ctx, size, phase);
 fz_unlock(ctx, FZ_LOCK_ALLOC);

 return ret;
}
