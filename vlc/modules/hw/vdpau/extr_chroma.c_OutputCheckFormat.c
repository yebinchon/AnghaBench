
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {scalar_t__ i_width; scalar_t__ i_height; } ;
typedef TYPE_1__ video_format_t ;
typedef int vdp_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ VdpStatus ;
typedef int VdpRGBAFormat ;
typedef int VdpDevice ;
typedef int VdpBool ;


 unsigned int ARRAY_SIZE (int const*) ;




 scalar_t__ VDP_STATUS_OK ;
 int VLC_EGENERIC ;
 int msg_Dbg (int *,char*,int ) ;
 int msg_Err (int *,char*,...) ;
 int vdp_get_error_string (int *,scalar_t__) ;
 scalar_t__ vdp_output_surface_query_capabilities (int *,int ,int const,int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int OutputCheckFormat(vlc_object_t *obj, vdp_t *vdp, VdpDevice dev,
                             const video_format_t *fmt,
                             VdpRGBAFormat *restrict rgb_fmt)
{
    static const VdpRGBAFormat rgb_fmts[] = {
        129, 131,
        130, 128,
    };

    for (unsigned i = 0; i < ARRAY_SIZE(rgb_fmts); i++)
    {
        uint32_t w, h;
        VdpBool ok;

        VdpStatus err = vdp_output_surface_query_capabilities(vdp, dev,
                                                     rgb_fmts[i], &ok, &w, &h);
        if (err != VDP_STATUS_OK)
        {
            msg_Err(obj, "%s capabilities query failure: %s", "output surface",
                    vdp_get_error_string(vdp, err));
            continue;
        }

        if (!ok || w < fmt->i_width || h < fmt->i_height)
            continue;

        *rgb_fmt = rgb_fmts[i];
        msg_Dbg(obj, "using RGBA format %u", *rgb_fmt);
        return 0;
    }

    msg_Err(obj, "no supported output surface format");
    return VLC_EGENERIC;
}
