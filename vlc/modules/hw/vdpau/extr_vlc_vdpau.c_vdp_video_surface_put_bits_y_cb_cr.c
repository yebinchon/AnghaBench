
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_surface_put_bits_y_cb_cr ) (int ,int ,void const* const*,int const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpYCbCrFormat ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int VIDEO_SURFACE_PUT_BITS_Y_CB_CR ;
 int stub1 (int ,int ,void const* const*,int const*) ;

VdpStatus vdp_video_surface_put_bits_y_cb_cr(const vdp_t *vdp,
    VdpVideoSurface surface, VdpYCbCrFormat fmt,
    const void *const *data, uint32_t const *pitches)
{
    CHECK_FUNC(VIDEO_SURFACE_PUT_BITS_Y_CB_CR);
    return vdp->vt.video_surface_put_bits_y_cb_cr(surface, fmt, data, pitches);
}
