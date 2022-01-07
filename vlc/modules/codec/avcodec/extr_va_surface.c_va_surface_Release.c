
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_pool; int refcount; } ;
typedef TYPE_1__ vlc_va_surface_t ;


 int atomic_fetch_sub (int *,int) ;
 int va_pool_Release (int ) ;

void va_surface_Release(vlc_va_surface_t *surface)
{
    if (atomic_fetch_sub(&surface->refcount, 1) != 1)
        return;

    va_pool_Release(surface->va_pool);
}
