
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* decoder_render ) (int ,int ,int const*,int ,int const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;
typedef int VdpPictureInfo ;
typedef int VdpDecoder ;
typedef int VdpBitstreamBuffer ;


 int CHECK_FUNC (int ) ;
 int DECODER_RENDER ;
 int stub1 (int ,int ,int const*,int ,int const*) ;

VdpStatus vdp_decoder_render(const vdp_t *vdp, VdpDecoder decoder,
    VdpVideoSurface target, const VdpPictureInfo *info,
    uint32_t bufv, const VdpBitstreamBuffer *bufc)
{
    CHECK_FUNC(DECODER_RENDER);
    return vdp->vt.decoder_render(decoder, target, info, bufv, bufc);
}
