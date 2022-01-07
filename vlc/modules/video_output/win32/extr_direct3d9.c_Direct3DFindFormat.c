
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_13__ {scalar_t__ allow_hw_yuv; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_14__ {int i_visible_width; int i_visible_height; scalar_t__ const i_chroma; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_15__ {scalar_t__ const fourcc; scalar_t__ name; int format; } ;
typedef TYPE_4__ d3d9_format_t ;
typedef int D3DFORMAT ;


 int Direct3D9CheckConversion (TYPE_1__*,int ,int ) ;
 TYPE_4__* d3d_formats ;
 scalar_t__ is_d3d9_opaque (scalar_t__ const) ;
 int msg_Dbg (TYPE_1__*,char*,scalar_t__) ;
 int msg_Warn (TYPE_1__*,char*,...) ;
 scalar_t__* vlc_fourcc_GetRGBFallback (scalar_t__ const) ;
 scalar_t__* vlc_fourcc_GetYUVFallback (scalar_t__ const) ;
 scalar_t__ vlc_fourcc_IsYUV (scalar_t__ const) ;

__attribute__((used)) static const d3d9_format_t *Direct3DFindFormat(vout_display_t *vd, const video_format_t *fmt, D3DFORMAT target)
{
    vout_display_sys_t *sys = vd->sys;
    bool hardware_scale_ok = !(fmt->i_visible_width & 1) && !(fmt->i_visible_height & 1);
    if( !hardware_scale_ok )
        msg_Warn( vd, "Disabling hardware chroma conversion due to odd dimensions" );

    for (unsigned pass = 0; pass < 2; pass++) {
        const vlc_fourcc_t *list;
        const vlc_fourcc_t dxva_chroma[] = {fmt->i_chroma, 0};

        if (pass == 0 && is_d3d9_opaque(fmt->i_chroma))
            list = dxva_chroma;
        else if (pass == 0 && hardware_scale_ok && sys->allow_hw_yuv && vlc_fourcc_IsYUV(fmt->i_chroma))
            list = vlc_fourcc_GetYUVFallback(fmt->i_chroma);
        else if (pass == 1)
            list = vlc_fourcc_GetRGBFallback(fmt->i_chroma);
        else
            continue;

        for (unsigned i = 0; list[i] != 0; i++) {
            for (unsigned j = 0; d3d_formats[j].name; j++) {
                const d3d9_format_t *format = &d3d_formats[j];

                if (format->fourcc != list[i])
                    continue;

                msg_Warn(vd, "trying surface pixel format: %s",
                         format->name);
                if (!Direct3D9CheckConversion(vd, format->format, target)) {
                    msg_Dbg(vd, "selected surface pixel format is %s",
                            format->name);
                    return format;
                }
            }
        }
    }
    return ((void*)0);
}
