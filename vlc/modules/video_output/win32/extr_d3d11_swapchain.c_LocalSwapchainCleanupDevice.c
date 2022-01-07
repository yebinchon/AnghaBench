
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d11_local_swapchain {int d3d_dev; int * dxgiswapChain; int * dxgiswapChain4; int ** swapchainTargetView; } ;


 size_t ARRAY_SIZE (int **) ;
 int D3D11_ReleaseDevice (int *) ;
 int ID3D11RenderTargetView_Release (int *) ;
 int IDXGISwapChain4_Release (int *) ;
 int IDXGISwapChain_Release (int *) ;

void LocalSwapchainCleanupDevice( void *opaque )
{
    struct d3d11_local_swapchain *display = opaque;
    for (size_t i=0; i < ARRAY_SIZE(display->swapchainTargetView); i++)
    {
        if (display->swapchainTargetView[i]) {
            ID3D11RenderTargetView_Release(display->swapchainTargetView[i]);
            display->swapchainTargetView[i] = ((void*)0);
        }
    }
    if (display->dxgiswapChain4)
    {
        IDXGISwapChain4_Release(display->dxgiswapChain4);
        display->dxgiswapChain4 = ((void*)0);
    }
    if (display->dxgiswapChain)
    {
        IDXGISwapChain_Release(display->dxgiswapChain);
        display->dxgiswapChain = ((void*)0);
    }

    D3D11_ReleaseDevice( &display->d3d_dev );
}
