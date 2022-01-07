
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_va_surface_t ;
struct TYPE_4__ {scalar_t__ surface_count; } ;
typedef TYPE_1__ va_pool_t ;


 int * GetSurface (TYPE_1__*) ;
 unsigned int MAX_GET_RETRIES ;
 int VOUT_OUTMEM_SLEEP ;
 int vlc_tick_sleep (int ) ;

vlc_va_surface_t *va_pool_Get(va_pool_t *va_pool)
{
    unsigned tries = MAX_GET_RETRIES;
    vlc_va_surface_t *surface;

    if (va_pool->surface_count == 0)
        return ((void*)0);

    while ((surface = GetSurface(va_pool)) == ((void*)0))
    {
        if (--tries == 0)
            return ((void*)0);


        vlc_tick_sleep(VOUT_OUTMEM_SLEEP);
    }
    return surface;
}
