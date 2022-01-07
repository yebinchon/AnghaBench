
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int user; int (* lock ) (int ,int) ;} ;
struct TYPE_6__ {TYPE_1__ locks; } ;
typedef TYPE_2__ fz_context ;


 int fz_lock_debug_lock (TYPE_2__*,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline void
fz_lock(fz_context *ctx, int lock)
{
 fz_lock_debug_lock(ctx, lock);
 ctx->locks.lock(ctx->locks.user, lock);
}
