
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_surface_query_get_put_bits_y_cb_cr_capabilities ) (int ,int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpYCbCrFormat ;
typedef int VdpStatus ;
typedef int VdpDevice ;
typedef int VdpChromaType ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES ;
 int stub1 (int ,int ,int ,int *) ;

VdpStatus vdp_video_surface_query_get_put_bits_y_cb_cr_capabilities(
    const vdp_t *vdp, VdpDevice device, VdpChromaType type, VdpYCbCrFormat fmt,
    VdpBool *ok)
{
    CHECK_FUNC(VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES);
    return vdp->vt.video_surface_query_get_put_bits_y_cb_cr_capabilities(
        device, type, fmt, ok);
}
