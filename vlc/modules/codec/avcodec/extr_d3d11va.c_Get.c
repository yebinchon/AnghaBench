
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_8__ {scalar_t__* hw_surface; int va_pool; } ;
typedef TYPE_2__ vlc_va_sys_t ;
typedef int vlc_va_surface_t ;
typedef int uint8_t ;
struct TYPE_9__ {int * context; } ;
typedef TYPE_3__ picture_t ;


 int * NewSurfacePicContext (TYPE_1__*,int *) ;
 int VLC_ENOITEM ;
 int VLC_SUCCESS ;
 scalar_t__ unlikely (int ) ;
 int * va_pool_Get (int ) ;
 size_t va_surface_GetIndex (int *) ;
 int va_surface_Release (int *) ;

__attribute__((used)) static int Get(vlc_va_t *va, picture_t *pic, uint8_t **data)
{
    vlc_va_sys_t *sys = va->sys;
    vlc_va_surface_t *va_surface = va_pool_Get(sys->va_pool);
    if (unlikely(va_surface == ((void*)0)))
        return VLC_ENOITEM;
    pic->context = NewSurfacePicContext(va, va_surface);
    if (unlikely(pic->context == ((void*)0)))
    {
        va_surface_Release(va_surface);
        return VLC_ENOITEM;
    }
    *data = (uint8_t*)sys->hw_surface[va_surface_GetIndex(va_surface)];
    return VLC_SUCCESS;
}
