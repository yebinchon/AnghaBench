
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t index; } ;
typedef TYPE_1__ vlc_va_surface_t ;



size_t va_surface_GetIndex(const vlc_va_surface_t *surface)
{
    return surface->index;
}
