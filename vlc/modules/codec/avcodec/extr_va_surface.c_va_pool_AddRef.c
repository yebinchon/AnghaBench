
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poolrefs; } ;
typedef TYPE_1__ va_pool_t ;


 int atomic_fetch_add (int *,int) ;

__attribute__((used)) static void va_pool_AddRef(va_pool_t *va_pool)
{
    atomic_fetch_add(&va_pool->poolrefs, 1);
}
