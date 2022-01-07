
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int opaque; int (* pf_destroy_device ) (int ) ;} ;
struct TYPE_6__ {TYPE_1__ callbacks; int poolrefs; } ;
typedef TYPE_2__ va_pool_t ;


 int atomic_fetch_sub (int *,int) ;
 int free (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void va_pool_Release(va_pool_t *va_pool)
{
    if (atomic_fetch_sub(&va_pool->poolrefs, 1) != 1)
        return;

    va_pool->callbacks.pf_destroy_device(va_pool->callbacks.opaque);

    free(va_pool);
}
