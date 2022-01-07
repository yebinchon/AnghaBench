
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* decoder_query_capabilities ) (int ,int ,int *,int *,int *,int *,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpDevice ;
typedef int VdpDecoderProfile ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int DECODER_QUERY_CAPABILITIES ;
 int stub1 (int ,int ,int *,int *,int *,int *,int *) ;

VdpStatus vdp_decoder_query_capabilities(const vdp_t *vdp, VdpDevice device,
    VdpDecoderProfile profile, VdpBool *ok, uint32_t *l, uint32_t *m,
    uint32_t *w, uint32_t *h)
{
    CHECK_FUNC(DECODER_QUERY_CAPABILITIES);
    return vdp->vt.decoder_query_capabilities(device, profile, ok, l, m, w, h);
}
