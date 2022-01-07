
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* decoder_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpDecoder ;


 int CHECK_FUNC (int ) ;
 int DECODER_DESTROY ;
 int stub1 (int ) ;

VdpStatus vdp_decoder_destroy(const vdp_t *vdp, VdpDecoder decoder)
{
    CHECK_FUNC(DECODER_DESTROY);
    return vdp->vt.decoder_destroy(decoder);
}
