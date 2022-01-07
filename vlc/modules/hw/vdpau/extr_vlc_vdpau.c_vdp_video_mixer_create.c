
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_create ) (int ,int ,int const*,int ,int const*,void const* const*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoMixerParameter ;
typedef int VdpVideoMixerFeature ;
typedef int VdpVideoMixer ;
typedef int VdpStatus ;
typedef int VdpDevice ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_CREATE ;
 int stub1 (int ,int ,int const*,int ,int const*,void const* const*,int *) ;

VdpStatus vdp_video_mixer_create(const vdp_t *vdp, VdpDevice device,
    uint32_t featc, const VdpVideoMixerFeature *featv,
    uint32_t parmc, const VdpVideoMixerParameter *parmv,
    const void *const *parmvalv, VdpVideoMixer *mixer)
{
    CHECK_FUNC(VIDEO_MIXER_CREATE);
    return vdp->vt.video_mixer_create(device, featc, featv, parmc, parmv,
                                      parmvalv, mixer);
}
