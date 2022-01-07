
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct d3d11_local_swapchain {TYPE_1__* colorspace; TYPE_2__* pixelFormat; } ;
typedef scalar_t__ libvlc_video_transfer_func_t ;
struct TYPE_7__ {scalar_t__ transfer; scalar_t__ primaries; scalar_t__ colorspace; int full_range; int surface_format; } ;
typedef TYPE_3__ libvlc_video_output_cfg_t ;
typedef int libvlc_video_direct3d_cfg_t ;
typedef scalar_t__ libvlc_video_color_space_t ;
typedef scalar_t__ libvlc_video_color_primaries_t ;
struct TYPE_6__ {int formatTexture; } ;
struct TYPE_5__ {scalar_t__ transfer; scalar_t__ primaries; scalar_t__ color; int b_full_range; } ;


 int UpdateSwapchain (struct d3d11_local_swapchain*,int const*) ;

bool LocalSwapchainUpdateOutput( void *opaque, const libvlc_video_direct3d_cfg_t *cfg, libvlc_video_output_cfg_t *out )
{
    struct d3d11_local_swapchain *display = opaque;
    if ( !UpdateSwapchain( display, cfg ) )
        return 0;
    out->surface_format = display->pixelFormat->formatTexture;
    out->full_range = display->colorspace->b_full_range;
    out->colorspace = (libvlc_video_color_space_t) display->colorspace->color;
    out->primaries = (libvlc_video_color_primaries_t) display->colorspace->primaries;
    out->transfer = (libvlc_video_transfer_func_t) display->colorspace->transfer;
    return 1;
}
