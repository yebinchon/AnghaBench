#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct d3d11_local_swapchain {int logged_capabilities; int /*<<< orphan*/ ** swapchainTargetView; TYPE_2__ const* pixelFormat; int /*<<< orphan*/  d3d_dev; int /*<<< orphan*/  obj; int /*<<< orphan*/ * dxgiswapChain; } ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; scalar_t__ bitdepth; } ;
typedef  TYPE_1__ libvlc_video_direct3d_cfg_t ;
struct TYPE_14__ {scalar_t__ formatTexture; scalar_t__ bitsPerChannel; int /*<<< orphan*/  fourcc; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ d3d_format_t ;
struct TYPE_16__ {scalar_t__ Format; scalar_t__ Width; scalar_t__ Height; int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {scalar_t__ Format; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ID3D11Texture2D ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DXGI_SWAP_CHAIN_DESC1 ;
typedef  TYPE_4__ D3D11_TEXTURE2D_DESC ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct d3d11_local_swapchain*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  D3D11_FORMAT_SUPPORT_DISPLAY ; 
 int /*<<< orphan*/  DXGI_FORMAT_UNKNOWN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_ID3D11Texture2D ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct d3d11_local_swapchain*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC23( struct d3d11_local_swapchain *display, const libvlc_video_direct3d_cfg_t *cfg )
{
    ID3D11Texture2D* pBackBuffer;
    HRESULT hr;

    D3D11_TEXTURE2D_DESC dsc = { 0 };
    uint8_t bitsPerChannel = 0;

    if ( display->swapchainTargetView[0] ) {
        ID3D11Resource *res = NULL;
        FUNC7( display->swapchainTargetView[0], &res );
        if ( res )
        {
            FUNC10( (ID3D11Texture2D*) res, &dsc );
            FUNC9( res );
        }
        FUNC18(display->pixelFormat->formatTexture == dsc.Format);
        bitsPerChannel = display->pixelFormat->bitsPerChannel;
    }

    if ( dsc.Width == cfg->width && dsc.Height == cfg->height && cfg->bitdepth <= bitsPerChannel )
        /* TODO also check the colorimetry */
        return true; /* nothing changed */

    for ( size_t i = 0; i < FUNC0( display->swapchainTargetView ); i++ )
    {
        if ( display->swapchainTargetView[i] ) {
            FUNC8( display->swapchainTargetView[i] );
            display->swapchainTargetView[i] = NULL;
        }
    }

    const d3d_format_t *newPixelFormat = NULL;
#if VLC_WINSTORE_APP
    display->dxgiswapChain = var_InheritInteger(display->obj, "winrt-swapchain");
    if (display->dxgiswapChain != NULL)
    {
        DXGI_SWAP_CHAIN_DESC1 scd;
        if (SUCCEEDED(IDXGISwapChain1_GetDesc(display->dxgiswapChain, &scd)))
        {
            for (const d3d_format_t *output_format = GetRenderFormatList();
                 output_format->name != NULL; ++output_format)
            {
                if (output_format->formatTexture == scd.Format &&
                    !is_d3d11_opaque(output_format->fourcc))
                {
                    newPixelFormat = output_format;
                    break;
                }
            }
        }
    }
#else /* !VLC_WINSTORE_APP */
    /* favor RGB formats first */
    newPixelFormat = FUNC5( display->obj, &display->d3d_dev, 0, true,
                                      cfg->bitdepth > 8 ? 10 : 8,
                                      0, 0,
                                      false, D3D11_FORMAT_SUPPORT_DISPLAY );
    if (FUNC21(newPixelFormat == NULL))
        newPixelFormat = FUNC5( display->obj, &display->d3d_dev, 0, false,
                                          cfg->bitdepth > 8 ? 10 : 8,
                                          0, 0,
                                          false, D3D11_FORMAT_SUPPORT_DISPLAY );
#endif /* !VLC_WINSTORE_APP */
    if (FUNC21(newPixelFormat == NULL)) {
        FUNC20(display->obj, "Could not get the SwapChain format.");
        return false;
    }

#if !VLC_WINSTORE_APP
    if (display->dxgiswapChain != NULL && display->pixelFormat != newPixelFormat)
    {
        // the pixel format changed, we need a new swapchain
        FUNC14(display->dxgiswapChain);
        display->dxgiswapChain = NULL;
        display->logged_capabilities = false;
    }

    if ( display->dxgiswapChain == NULL )
    {
        display->pixelFormat = newPixelFormat;
        FUNC1(display, cfg->width, cfg->height);

        if (display->dxgiswapChain == NULL)
            return false;
    }
    else
#endif /* !VLC_WINSTORE_APP */
    {
        /* TODO detect is the size is the same as the output and switch to fullscreen mode */
        hr = FUNC15( display->dxgiswapChain, 0, cfg->width, cfg->height,
                                           DXGI_FORMAT_UNKNOWN, 0 );
        if ( FUNC4( hr ) ) {
            FUNC20( display->obj, "Failed to resize the backbuffer. (hr=0x%lX)", hr );
            return false;
        }
    }

    hr = FUNC13( display->dxgiswapChain, 0, &IID_ID3D11Texture2D, (LPVOID *) &pBackBuffer );
    if ( FUNC4( hr ) ) {
        FUNC20( display->obj, "Could not get the backbuffer for the Swapchain. (hr=0x%lX)", hr );
        return false;
    }

    hr = FUNC3( &display->d3d_dev, (ID3D11Resource *) pBackBuffer,
                                    display->pixelFormat, display->swapchainTargetView );
    FUNC11( pBackBuffer );
    if ( FUNC4( hr ) ) {
        FUNC20( display->obj, "Failed to create the target view. (hr=0x%lX)", hr );
        return false;
    }

    FUNC2( &display->d3d_dev, display->pixelFormat, display->swapchainTargetView );

    FUNC17(display, cfg);

    return true;
}