
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_query_parameter_value_range ) (int ,int ,void*,void*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpVideoMixerParameter ;
typedef int VdpStatus ;
typedef int VdpDevice ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_QUERY_PARAMETER_VALUE_RANGE ;
 int stub1 (int ,int ,void*,void*) ;

VdpStatus vdp_video_mixer_query_parameter_value_range(const vdp_t *vdp,
    VdpDevice device, VdpVideoMixerParameter parameter, void *min, void *max)
{
    CHECK_FUNC(VIDEO_MIXER_QUERY_PARAMETER_VALUE_RANGE);
    return vdp->vt.video_mixer_query_parameter_value_range(device, parameter,
        min, max);
}
