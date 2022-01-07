
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_set_attribute_values ) (int ,int ,int const* const,void const* const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoMixerAttribute ;
typedef int VdpVideoMixer ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_SET_ATTRIBUTE_VALUES ;
 int stub1 (int ,int ,int const* const,void const* const*) ;

VdpStatus vdp_video_mixer_set_attribute_values(const vdp_t *vdp,
    VdpVideoMixer mixer, uint32_t count,
    const VdpVideoMixerAttribute *const ids, const void *const *values)
{
    CHECK_FUNC(VIDEO_MIXER_SET_ATTRIBUTE_VALUES);
    return vdp->vt.video_mixer_set_attribute_values(mixer, count, ids, values);
}
