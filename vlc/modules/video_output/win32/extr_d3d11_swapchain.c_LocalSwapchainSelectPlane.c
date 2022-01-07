
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d3dcontext; } ;
struct d3d11_local_swapchain {int * swapchainTargetView; TYPE_1__ d3d_dev; } ;


 int ID3D11DeviceContext_OMSetRenderTargets (int ,int,int *,int *) ;

bool LocalSwapchainSelectPlane( void *opaque, size_t plane )
{
    struct d3d11_local_swapchain *display = opaque;
    if (!display->swapchainTargetView[plane])
        return 0;
    ID3D11DeviceContext_OMSetRenderTargets(display->d3d_dev.d3dcontext, 1,
                                            &display->swapchainTargetView[plane], ((void*)0));
    return 1;
}
