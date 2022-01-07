
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bitmap_surface_put_bits_native ) (int ,void const* const*,int const*,int const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRect ;
typedef int VdpBitmapSurface ;


 int BITMAP_SURFACE_PUT_BITS_NATIVE ;
 int CHECK_FUNC (int ) ;
 int stub1 (int ,void const* const*,int const*,int const*) ;

VdpStatus vdp_bitmap_surface_put_bits_native(const vdp_t *vdp,
    VdpBitmapSurface surface, const void *const *data, const uint32_t *pitch,
    const VdpRect *rect)
{
    CHECK_FUNC(BITMAP_SURFACE_PUT_BITS_NATIVE);
    return vdp->vt.bitmap_surface_put_bits_native(surface, data, pitch, rect);
}
