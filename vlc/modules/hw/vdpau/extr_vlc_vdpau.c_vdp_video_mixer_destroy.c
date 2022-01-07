
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpVideoMixer ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_DESTROY ;
 int stub1 (int ) ;

VdpStatus vdp_video_mixer_destroy(const vdp_t *vdp, VdpVideoMixer mixer)
{
    CHECK_FUNC(VIDEO_MIXER_DESTROY);
    return vdp->vt.video_mixer_destroy(mixer);
}
