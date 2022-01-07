
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int * d3dregion; scalar_t__ d3dregion_count; int * sceneTexture; int * sceneVertexBuffer; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int Direct3D9DeleteRegions (scalar_t__,int *) ;
 int IDirect3DTexture9_Release (int *) ;
 int IDirect3DVertexBuffer9_Release (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void Direct3D9DestroyScene(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    Direct3D9DeleteRegions(sys->d3dregion_count, sys->d3dregion);

    if (sys->sceneVertexBuffer)
    {
        IDirect3DVertexBuffer9_Release(sys->sceneVertexBuffer);
        sys->sceneVertexBuffer = ((void*)0);
    }

    if (sys->sceneTexture)
    {
        IDirect3DTexture9_Release(sys->sceneTexture);
        sys->sceneTexture = ((void*)0);
    }

    sys->d3dregion_count = 0;
    sys->d3dregion = ((void*)0);

    msg_Dbg(vd, "Direct3D9 scene released successfully");
}
