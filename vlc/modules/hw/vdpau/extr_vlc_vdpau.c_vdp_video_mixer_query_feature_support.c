
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_query_feature_support ) (int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpVideoMixerFeature ;
typedef int VdpStatus ;
typedef int VdpDevice ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_QUERY_FEATURE_SUPPORT ;
 int stub1 (int ,int ,int *) ;

VdpStatus vdp_video_mixer_query_feature_support(const vdp_t *vdp,
    VdpDevice device, VdpVideoMixerFeature feature, VdpBool *ok)
{
    CHECK_FUNC(VIDEO_MIXER_QUERY_FEATURE_SUPPORT);
    return vdp->vt.video_mixer_query_feature_support(device, feature, ok);
}
