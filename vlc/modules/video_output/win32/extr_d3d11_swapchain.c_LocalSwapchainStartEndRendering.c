
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct d3d11_local_swapchain {int swapchainTargetView; int pixelFormat; int d3d_dev; scalar_t__ dxgiswapChain4; int dxgiswapChain; } ;
struct TYPE_12__ {int MaxFrameAverageLightLevel; int MaxContentLightLevel; int MaxMasteringLuminance; int MinMasteringLuminance; int * WhitePoint; int * RedPrimary; int * BluePrimary; int * GreenPrimary; } ;
typedef TYPE_4__ libvlc_video_direct3d_hdr10_metadata_t ;
typedef int i_width ;
typedef int i_height ;
typedef int hdr10 ;
typedef int UINT ;
struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_10__ {TYPE_1__ display; } ;
struct TYPE_11__ {TYPE_2__ vdcfg; } ;
struct TYPE_14__ {TYPE_3__ area; } ;
struct TYPE_13__ {int MaxFrameAverageLightLevel; int MaxContentLightLevel; int MaxMasteringLuminance; int MinMasteringLuminance; int * WhitePoint; int * RedPrimary; int * BluePrimary; int * GreenPrimary; int member_0; } ;
typedef int HRESULT ;
typedef TYPE_5__ DXGI_HDR_METADATA_HDR10 ;


 int D3D11_ClearRenderTargets (int *,int ,int ) ;
 int DXGI_HDR_METADATA_TYPE_HDR10 ;
 int GUID_SWAPCHAIN_HEIGHT ;
 int GUID_SWAPCHAIN_WIDTH ;
 int IDXGISwapChain4_SetHDRMetaData (scalar_t__,int ,int,TYPE_5__*) ;
 int IDXGISwapChain_GetPrivateData (int ,int *,int*,scalar_t__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 TYPE_6__* sys ;
 int vd ;
 int vout_display_SetSize (int ,scalar_t__,scalar_t__) ;

bool LocalSwapchainStartEndRendering( void *opaque, bool enter, const libvlc_video_direct3d_hdr10_metadata_t *p_hdr10 )
{
    struct d3d11_local_swapchain *display = opaque;

    if ( enter )
    {
        if ( display->dxgiswapChain4 && p_hdr10 != ((void*)0) )
        {
            DXGI_HDR_METADATA_HDR10 hdr10 = { 0 };
            hdr10.GreenPrimary[0] = p_hdr10->GreenPrimary[0];
            hdr10.GreenPrimary[1] = p_hdr10->GreenPrimary[1];
            hdr10.BluePrimary[0] = p_hdr10->BluePrimary[0];
            hdr10.BluePrimary[1] = p_hdr10->BluePrimary[1];
            hdr10.RedPrimary[0] = p_hdr10->RedPrimary[0];
            hdr10.RedPrimary[1] = p_hdr10->RedPrimary[1];
            hdr10.WhitePoint[0] = p_hdr10->WhitePoint[0];
            hdr10.WhitePoint[1] = p_hdr10->WhitePoint[1];
            hdr10.MinMasteringLuminance = p_hdr10->MinMasteringLuminance;
            hdr10.MaxMasteringLuminance = p_hdr10->MaxMasteringLuminance;
            hdr10.MaxContentLightLevel = p_hdr10->MaxContentLightLevel;
            hdr10.MaxFrameAverageLightLevel = p_hdr10->MaxFrameAverageLightLevel;
            IDXGISwapChain4_SetHDRMetaData( display->dxgiswapChain4, DXGI_HDR_METADATA_TYPE_HDR10, sizeof( hdr10 ), &hdr10 );
        }

        D3D11_ClearRenderTargets( &display->d3d_dev, display->pixelFormat, display->swapchainTargetView );
    }
    return 1;
}
