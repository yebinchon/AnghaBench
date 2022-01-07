
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_16__ {int height; int width; } ;
struct TYPE_17__ {TYPE_1__ display; } ;
struct TYPE_18__ {TYPE_2__ vdcfg; } ;
struct TYPE_20__ {int outside_opaque; int (* updateOutputCb ) (int ,TYPE_8__*,int *) ;TYPE_3__ area; } ;
typedef TYPE_5__ vout_display_sys_t ;
struct TYPE_21__ {int pixel_bits; int plane_count; int pixel_size; } ;
typedef TYPE_6__ vlc_chroma_description_t ;
struct TYPE_22__ {int i_chroma; scalar_t__ color_range; scalar_t__ transfer; scalar_t__ space; scalar_t__ primaries; } ;
typedef TYPE_7__ video_format_t ;
typedef scalar_t__ libvlc_video_transfer_func_t ;
typedef int libvlc_video_output_cfg_t ;
struct TYPE_23__ {int bitdepth; int full_range; int height; int width; scalar_t__ transfer; scalar_t__ colorspace; scalar_t__ primaries; } ;
typedef TYPE_8__ libvlc_video_direct3d_cfg_t ;
typedef scalar_t__ libvlc_video_color_space_t ;
typedef scalar_t__ libvlc_video_color_primaries_t ;


 scalar_t__ COLOR_RANGE_FULL ;
 int UpdateDisplayFormat (TYPE_4__*,int *,TYPE_7__ const*) ;




 int VLC_EGENERIC ;
 scalar_t__ is_d3d11_opaque (int) ;
 int msg_Err (TYPE_4__*,char*,int ,int ,int) ;
 int stub1 (int ,TYPE_8__*,int *) ;
 TYPE_6__* vlc_fourcc_GetChromaDescription (int) ;
 scalar_t__ vlc_fourcc_IsYUV (int) ;

__attribute__((used)) static int QueryDisplayFormat(vout_display_t *vd, const video_format_t *fmt)
{
    vout_display_sys_t *sys = vd->sys;
    libvlc_video_direct3d_cfg_t cfg;

    cfg.width = sys->area.vdcfg.display.width;
    cfg.height = sys->area.vdcfg.display.height;

    switch (fmt->i_chroma)
    {
    case 131:
        cfg.bitdepth = 8;
        break;
    case 128:
    case 129:
        cfg.bitdepth = 8;
        break;
    case 130:
        cfg.bitdepth = 10;
        break;
    default:
        {
            const vlc_chroma_description_t *p_format = vlc_fourcc_GetChromaDescription(fmt->i_chroma);
            if (p_format == ((void*)0))
            {
                cfg.bitdepth = 8;
            }
            else
            {
                cfg.bitdepth = p_format->pixel_bits == 0 ? 8 : p_format->pixel_bits /
                                                               (p_format->plane_count==1 ? p_format->pixel_size : 1);
            }
        }
        break;
    }
    cfg.full_range = fmt->color_range == COLOR_RANGE_FULL ||

                     is_d3d11_opaque(fmt->i_chroma) ||
                     vlc_fourcc_IsYUV(fmt->i_chroma);
    cfg.primaries = (libvlc_video_color_primaries_t) fmt->primaries;
    cfg.colorspace = (libvlc_video_color_space_t) fmt->space;
    cfg.transfer = (libvlc_video_transfer_func_t) fmt->transfer;

    libvlc_video_output_cfg_t out;
    if (!sys->updateOutputCb( sys->outside_opaque, &cfg, &out ))
    {
        msg_Err(vd, "Failed to set format %dx%d %d bits on output", cfg.width, cfg.height, cfg.bitdepth);
        return VLC_EGENERIC;
    }

    return UpdateDisplayFormat(vd, &out, fmt);
}
