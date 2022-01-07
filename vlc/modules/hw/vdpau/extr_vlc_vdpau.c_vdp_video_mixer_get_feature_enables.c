
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_get_feature_enables ) (int ,int ,int const*,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoMixerFeature ;
typedef int VdpVideoMixer ;
typedef int VdpStatus ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_GET_FEATURE_ENABLES ;
 int stub1 (int ,int ,int const*,int *) ;

VdpStatus vdp_video_mixer_get_feature_enables(const vdp_t *vdp,
    VdpVideoMixer mixer, uint32_t count, const VdpVideoMixerFeature *ids,
    VdpBool *values)
{
    CHECK_FUNC(VIDEO_MIXER_GET_FEATURE_ENABLES);
    return vdp->vt.video_mixer_get_feature_enables(mixer, count, ids, values);
}
