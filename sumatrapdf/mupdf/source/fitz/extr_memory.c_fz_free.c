
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int user; int (* free ) (int ,void*) ;} ;
struct TYPE_7__ {TYPE_1__ alloc; } ;
typedef TYPE_2__ fz_context ;


 int FZ_LOCK_ALLOC ;
 int fz_lock (TYPE_2__*,int ) ;
 int fz_unlock (TYPE_2__*,int ) ;
 int stub1 (int ,void*) ;

void
fz_free(fz_context *ctx, void *p)
{
 if (p)
 {
  fz_lock(ctx, FZ_LOCK_ALLOC);
  ctx->alloc.free(ctx->alloc.user, p);
  fz_unlock(ctx, FZ_LOCK_ALLOC);
 }
}
