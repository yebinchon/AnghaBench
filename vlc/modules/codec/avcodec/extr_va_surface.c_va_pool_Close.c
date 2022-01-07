
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int surface_count; int * surface; } ;
typedef TYPE_1__ va_pool_t ;


 int va_pool_Release (TYPE_1__*) ;
 int va_surface_Release (int *) ;

void va_pool_Close(va_pool_t *va_pool)
{
    for (unsigned i = 0; i < va_pool->surface_count; i++)
        va_surface_Release(&va_pool->surface[i]);
    va_pool->surface_count = 0;

    va_pool_Release(va_pool);
}
