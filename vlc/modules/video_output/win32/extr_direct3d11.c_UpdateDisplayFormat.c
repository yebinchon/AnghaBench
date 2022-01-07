
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_14__ {scalar_t__ color; scalar_t__ transfer; scalar_t__ primaries; scalar_t__ b_full_range; scalar_t__ luminance_peak; TYPE_5__ const* pixelFormat; int member_0; } ;
struct TYPE_12__ {TYPE_4__ display; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef scalar_t__ video_transfer_func_t ;
typedef int video_format_t ;
typedef scalar_t__ video_color_space_t ;
typedef scalar_t__ video_color_primaries_t ;
struct TYPE_13__ {int transfer; scalar_t__ full_range; scalar_t__ primaries; scalar_t__ colorspace; scalar_t__ surface_format; } ;
typedef TYPE_3__ libvlc_video_output_cfg_t ;
typedef TYPE_4__ display_info_t ;
struct TYPE_15__ {scalar_t__ formatTexture; int fourcc; int * name; } ;
typedef TYPE_5__ d3d_format_t ;
typedef scalar_t__ DXGI_FORMAT ;


 void* DEFAULT_SRGB_BRIGHTNESS ;
 scalar_t__ Direct3D11CreateFormatResources (TYPE_1__*,int const*) ;
 TYPE_5__* GetRenderFormatList () ;
 scalar_t__ MAX_PQ_BRIGHTNESS ;



 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int is_d3d11_opaque (int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int UpdateDisplayFormat(vout_display_t *vd, libvlc_video_output_cfg_t *out,
                               const video_format_t *input_fmt)
{
    vout_display_sys_t *sys = vd->sys;
    display_info_t new_display = { 0 };

    for (const d3d_format_t *output_format = GetRenderFormatList();
         output_format->name != ((void*)0); ++output_format)
    {
        if (output_format->formatTexture == (DXGI_FORMAT)out->surface_format &&
            !is_d3d11_opaque(output_format->fourcc))
        {
            new_display.pixelFormat = output_format;
            break;
        }
    }
    if (unlikely(new_display.pixelFormat == ((void*)0)))
    {
        msg_Err(vd, "Could not find the output format.");
        return VLC_EGENERIC;
    }

    new_display.color = (video_color_space_t) out->colorspace;
    new_display.transfer = (video_transfer_func_t) out->transfer;
    new_display.primaries = (video_color_primaries_t) out->primaries;
    new_display.b_full_range = out->full_range;


    switch (out->transfer)
    {
    case 130:
    case 128:
        new_display.luminance_peak = DEFAULT_SRGB_BRIGHTNESS;
        break;
    case 129:
        new_display.luminance_peak = MAX_PQ_BRIGHTNESS;
        break;
    default:
        new_display.luminance_peak = DEFAULT_SRGB_BRIGHTNESS;
        break;
    }

    if ( sys->display.pixelFormat == ((void*)0) ||
         ( sys->display.pixelFormat != new_display.pixelFormat ||
           sys->display.luminance_peak != new_display.luminance_peak ||
           sys->display.color != new_display.color ||
           sys->display.transfer != new_display.transfer ||
           sys->display.primaries != new_display.primaries ||
           sys->display.b_full_range != new_display.b_full_range ))
    {
        sys->display = new_display;

        if (Direct3D11CreateFormatResources(vd, input_fmt)) {
            msg_Err(vd, "Failed to allocate format resources");
            return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
