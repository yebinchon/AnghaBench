
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refcount; } ;
typedef TYPE_1__ vlc_va_surface_t ;
struct TYPE_7__ {unsigned int surface_count; TYPE_1__* surface; } ;
typedef TYPE_2__ va_pool_t ;


 scalar_t__ atomic_compare_exchange_strong (int *,uintptr_t*,int) ;
 int atomic_fetch_sub (int *,int) ;
 int va_surface_AddRef (TYPE_1__*) ;

__attribute__((used)) static vlc_va_surface_t *GetSurface(va_pool_t *va_pool)
{
    for (unsigned i = 0; i < va_pool->surface_count; i++) {
        vlc_va_surface_t *surface = &va_pool->surface[i];
        uintptr_t expected = 1;

        if (atomic_compare_exchange_strong(&surface->refcount, &expected, 2))
        {

            atomic_fetch_sub(&surface->refcount, 1);
            va_surface_AddRef(surface);
            return surface;
        }
    }
    return ((void*)0);
}
