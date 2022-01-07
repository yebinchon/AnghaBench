
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_7__ {int * prepareWait; int regionQuad; int projectionVShader; int flatVShader; int stagingSys; scalar_t__ d3dregion_count; int d3dregions; int picQuad; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int D3D11_ReleasePixelShader (int *) ;
 int D3D11_ReleaseQuad (int *) ;
 int D3D11_ReleaseVertexShader (int *) ;
 int Direct3D11DeleteRegions (scalar_t__,int ) ;
 int Direct3D11DestroyPool (TYPE_1__*) ;
 int ID3D11Query_Release (int *) ;
 int ReleaseD3D11PictureSys (int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void Direct3D11DestroyResources(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    Direct3D11DestroyPool(vd);

    D3D11_ReleaseQuad(&sys->picQuad);
    Direct3D11DeleteRegions(sys->d3dregion_count, sys->d3dregions);
    sys->d3dregion_count = 0;

    ReleaseD3D11PictureSys(&sys->stagingSys);

    D3D11_ReleaseVertexShader(&sys->flatVShader);
    D3D11_ReleaseVertexShader(&sys->projectionVShader);

    D3D11_ReleasePixelShader(&sys->regionQuad);
    if (sys->prepareWait)
    {
        ID3D11Query_Release(sys->prepareWait);
        sys->prepareWait = ((void*)0);
    }

    msg_Dbg(vd, "Direct3D11 resources destroyed");
}
