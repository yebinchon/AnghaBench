
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_6__ {int * pool; int * dx_render; } ;


 int Direct3D9DestroyScene (TYPE_2__*) ;
 int Direct3D9DestroyShaders (TYPE_2__*) ;
 int IDirect3DSurface9_Release (int *) ;
 int picture_pool_Release (int *) ;

__attribute__((used)) static void Direct3D9DestroyResources(vout_display_t *vd)
{
    Direct3D9DestroyScene(vd);
    if (vd->sys->dx_render)
    {
        IDirect3DSurface9_Release(vd->sys->dx_render);
        vd->sys->dx_render = ((void*)0);
    }
    if (vd->sys->pool)
    {
        picture_pool_Release(vd->sys->pool);
        vd->sys->pool = ((void*)0);
    }
    Direct3D9DestroyShaders(vd);
}
