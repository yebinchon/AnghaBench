
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_7__ {scalar_t__ swapCb; int outside_opaque; int d3d_dev; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int D3D11_ReleaseDevice (int *) ;
 int Direct3D11DestroyResources (TYPE_1__*) ;
 int LocalSwapchainCleanupDevice (int ) ;
 scalar_t__ LocalSwapchainSwap ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void Direct3D11Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    Direct3D11DestroyResources(vd);

    D3D11_ReleaseDevice( &sys->d3d_dev );

    if ( sys->swapCb == LocalSwapchainSwap )
        LocalSwapchainCleanupDevice( sys->outside_opaque );

    msg_Dbg(vd, "Direct3D11 display adapter closed");
}
