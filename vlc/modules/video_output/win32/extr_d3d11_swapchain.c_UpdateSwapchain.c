
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct d3d11_local_swapchain {int logged_capabilities; int ** swapchainTargetView; TYPE_2__ const* pixelFormat; int d3d_dev; int obj; int * dxgiswapChain; } ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; scalar_t__ bitdepth; } ;
typedef TYPE_1__ libvlc_video_direct3d_cfg_t ;
struct TYPE_14__ {scalar_t__ formatTexture; scalar_t__ bitsPerChannel; int fourcc; int * name; } ;
typedef TYPE_2__ d3d_format_t ;
struct TYPE_16__ {scalar_t__ Format; scalar_t__ Width; scalar_t__ Height; int member_0; } ;
struct TYPE_15__ {scalar_t__ Format; } ;
typedef int LPVOID ;
typedef int ID3D11Texture2D ;
typedef int ID3D11Resource ;
typedef int HRESULT ;
typedef TYPE_3__ DXGI_SWAP_CHAIN_DESC1 ;
typedef TYPE_4__ D3D11_TEXTURE2D_DESC ;


 size_t ARRAY_SIZE (int **) ;
 int CreateSwapchain (struct d3d11_local_swapchain*,scalar_t__,scalar_t__) ;
 int D3D11_ClearRenderTargets (int *,TYPE_2__ const*,int **) ;
 int D3D11_CreateRenderTargets (int *,int *,TYPE_2__ const*,int **) ;
 int D3D11_FORMAT_SUPPORT_DISPLAY ;
 int DXGI_FORMAT_UNKNOWN ;
 scalar_t__ FAILED (int ) ;
 TYPE_2__* FindD3D11Format (int ,int *,int ,int,int,int ,int ,int,int ) ;
 TYPE_2__* GetRenderFormatList () ;
 int ID3D11RenderTargetView_GetResource (int *,int **) ;
 int ID3D11RenderTargetView_Release (int *) ;
 int ID3D11Resource_Release (int *) ;
 int ID3D11Texture2D_GetDesc (int *,TYPE_4__*) ;
 int ID3D11Texture2D_Release (int *) ;
 int IDXGISwapChain1_GetDesc (int *,TYPE_3__*) ;
 int IDXGISwapChain_GetBuffer (int *,int ,int *,int *) ;
 int IDXGISwapChain_Release (int *) ;
 int IDXGISwapChain_ResizeBuffers (int *,int ,scalar_t__,scalar_t__,int ,int ) ;
 int IID_ID3D11Texture2D ;
 scalar_t__ SUCCEEDED (int ) ;
 int SelectSwapchainColorspace (struct d3d11_local_swapchain*,TYPE_1__ const*) ;
 int assert (int) ;
 int is_d3d11_opaque (int ) ;
 int msg_Err (int ,char*,...) ;
 scalar_t__ unlikely (int ) ;
 int * var_InheritInteger (int ,char*) ;

__attribute__((used)) static bool UpdateSwapchain( struct d3d11_local_swapchain *display, const libvlc_video_direct3d_cfg_t *cfg )
{
    ID3D11Texture2D* pBackBuffer;
    HRESULT hr;

    D3D11_TEXTURE2D_DESC dsc = { 0 };
    uint8_t bitsPerChannel = 0;

    if ( display->swapchainTargetView[0] ) {
        ID3D11Resource *res = ((void*)0);
        ID3D11RenderTargetView_GetResource( display->swapchainTargetView[0], &res );
        if ( res )
        {
            ID3D11Texture2D_GetDesc( (ID3D11Texture2D*) res, &dsc );
            ID3D11Resource_Release( res );
        }
        assert(display->pixelFormat->formatTexture == dsc.Format);
        bitsPerChannel = display->pixelFormat->bitsPerChannel;
    }

    if ( dsc.Width == cfg->width && dsc.Height == cfg->height && cfg->bitdepth <= bitsPerChannel )

        return 1;

    for ( size_t i = 0; i < ARRAY_SIZE( display->swapchainTargetView ); i++ )
    {
        if ( display->swapchainTargetView[i] ) {
            ID3D11RenderTargetView_Release( display->swapchainTargetView[i] );
            display->swapchainTargetView[i] = ((void*)0);
        }
    }

    const d3d_format_t *newPixelFormat = ((void*)0);
    newPixelFormat = FindD3D11Format( display->obj, &display->d3d_dev, 0, 1,
                                      cfg->bitdepth > 8 ? 10 : 8,
                                      0, 0,
                                      0, D3D11_FORMAT_SUPPORT_DISPLAY );
    if (unlikely(newPixelFormat == ((void*)0)))
        newPixelFormat = FindD3D11Format( display->obj, &display->d3d_dev, 0, 0,
                                          cfg->bitdepth > 8 ? 10 : 8,
                                          0, 0,
                                          0, D3D11_FORMAT_SUPPORT_DISPLAY );

    if (unlikely(newPixelFormat == ((void*)0))) {
        msg_Err(display->obj, "Could not get the SwapChain format.");
        return 0;
    }


    if (display->dxgiswapChain != ((void*)0) && display->pixelFormat != newPixelFormat)
    {

        IDXGISwapChain_Release(display->dxgiswapChain);
        display->dxgiswapChain = ((void*)0);
        display->logged_capabilities = 0;
    }

    if ( display->dxgiswapChain == ((void*)0) )
    {
        display->pixelFormat = newPixelFormat;
        CreateSwapchain(display, cfg->width, cfg->height);

        if (display->dxgiswapChain == ((void*)0))
            return 0;
    }
    else

    {

        hr = IDXGISwapChain_ResizeBuffers( display->dxgiswapChain, 0, cfg->width, cfg->height,
                                           DXGI_FORMAT_UNKNOWN, 0 );
        if ( FAILED( hr ) ) {
            msg_Err( display->obj, "Failed to resize the backbuffer. (hr=0x%lX)", hr );
            return 0;
        }
    }

    hr = IDXGISwapChain_GetBuffer( display->dxgiswapChain, 0, &IID_ID3D11Texture2D, (LPVOID *) &pBackBuffer );
    if ( FAILED( hr ) ) {
        msg_Err( display->obj, "Could not get the backbuffer for the Swapchain. (hr=0x%lX)", hr );
        return 0;
    }

    hr = D3D11_CreateRenderTargets( &display->d3d_dev, (ID3D11Resource *) pBackBuffer,
                                    display->pixelFormat, display->swapchainTargetView );
    ID3D11Texture2D_Release( pBackBuffer );
    if ( FAILED( hr ) ) {
        msg_Err( display->obj, "Failed to create the target view. (hr=0x%lX)", hr );
        return 0;
    }

    D3D11_ClearRenderTargets( &display->d3d_dev, display->pixelFormat, display->swapchainTargetView );

    SelectSwapchainColorspace(display, cfg);

    return 1;
}
