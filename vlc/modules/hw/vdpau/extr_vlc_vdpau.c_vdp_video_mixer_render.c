
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_mixer_render ) (int ,int ,int const*,int ,int ,int const*,int ,int ,int const*,int const*,int ,int const*,int const*,int ,int const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoSurface ;
typedef int VdpVideoMixerPictureStructure ;
typedef int VdpVideoMixer ;
typedef int VdpStatus ;
typedef int VdpRect ;
typedef int VdpOutputSurface ;
typedef int VdpLayer ;


 int CHECK_FUNC (int ) ;
 int VIDEO_MIXER_RENDER ;
 int stub1 (int ,int ,int const*,int ,int ,int const*,int ,int ,int const*,int const*,int ,int const*,int const*,int ,int const*) ;

VdpStatus vdp_video_mixer_render(const vdp_t *vdp, VdpVideoMixer mixer,
    VdpOutputSurface bgsurface, const VdpRect *bgrect,
    VdpVideoMixerPictureStructure pic_struct, uint32_t prev_count,
    const VdpVideoSurface *prev, VdpVideoSurface cur, uint32_t next_count,
    const VdpVideoSurface *next, const VdpRect *src_rect,
    VdpOutputSurface dst, const VdpRect *dst_rect, const VdpRect *dst_v_rect,
    uint32_t layerc, const VdpLayer *layerv)
{
    CHECK_FUNC(VIDEO_MIXER_RENDER);
    return vdp->vt.video_mixer_render(mixer, bgsurface, bgrect, pic_struct,
        prev_count, prev, cur, next_count, next, src_rect, dst, dst_rect,
        dst_v_rect, layerc, layerv);
}
