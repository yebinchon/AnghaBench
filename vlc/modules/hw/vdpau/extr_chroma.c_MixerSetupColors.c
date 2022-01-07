
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {float brightness; float contrast; float saturation; float hue; } ;
struct TYPE_14__ {TYPE_3__ procamp; int vdp; } ;
typedef TYPE_4__ vlc_vdp_mixer_t ;
struct TYPE_11__ {int space; int i_height; } ;
struct TYPE_12__ {TYPE_1__ video; } ;
struct TYPE_15__ {TYPE_2__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_5__ filter_t ;
typedef scalar_t__ VdpStatus ;
struct TYPE_16__ {float brightness; float contrast; float saturation; float hue; } ;
typedef TYPE_6__ VdpProcamp ;
typedef int VdpColorStandard ;
typedef int VdpCSCMatrix ;




 int VDP_COLOR_STANDARD_ITUR_BT_601 ;
 int VDP_COLOR_STANDARD_ITUR_BT_709 ;
 scalar_t__ VDP_STATUS_OK ;
 int msg_Err (TYPE_5__*,char*,char*,int ) ;
 scalar_t__ vdp_generate_csc_matrix (int ,TYPE_6__ const*,int ,int *) ;
 int vdp_get_error_string (int ,scalar_t__) ;

__attribute__((used)) static VdpStatus MixerSetupColors(filter_t *filter, const VdpProcamp *procamp,
                                  VdpCSCMatrix *restrict csc)
{
    vlc_vdp_mixer_t *sys = filter->p_sys;
    VdpStatus err;

    VdpColorStandard std;

    switch (filter->fmt_in.video.space)
    {
        case 129:
            std = VDP_COLOR_STANDARD_ITUR_BT_601;
            break;
        case 128:
            std = VDP_COLOR_STANDARD_ITUR_BT_709;
            break;
        default:
            if (filter->fmt_in.video.i_height >= 720)
                std = VDP_COLOR_STANDARD_ITUR_BT_709;
            else
                std = VDP_COLOR_STANDARD_ITUR_BT_601;
    }

    err = vdp_generate_csc_matrix(sys->vdp, procamp, std, csc);
    if (err != VDP_STATUS_OK)
    {
        msg_Err(filter, "video %s failure: %s", "color space matrix",
                vdp_get_error_string(sys->vdp, err));
        return err;
    }

    if (procamp != ((void*)0))
    {
        sys->procamp.brightness = procamp->brightness;
        sys->procamp.contrast = procamp->contrast;
        sys->procamp.saturation = procamp->saturation;
        sys->procamp.hue = procamp->hue;
    }
    else
    {
        sys->procamp.brightness = 0.f;
        sys->procamp.contrast = 1.f;
        sys->procamp.saturation = 1.f;
        sys->procamp.hue = 0.f;
    }
    return VDP_STATUS_OK;
}
