
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_put_bits_native ) (int ,void const* const*,int const*,int const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRect ;
typedef int VdpOutputSurface ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_PUT_BITS_NATIVE ;
 int stub1 (int ,void const* const*,int const*,int const*) ;

VdpStatus vdp_output_surface_put_bits_native(const vdp_t *vdp,
    VdpOutputSurface surface, const void *const *data, uint32_t const *pitches,
    const VdpRect *dst)
{
    CHECK_FUNC(OUTPUT_SURFACE_PUT_BITS_NATIVE);
    return vdp->vt.output_surface_put_bits_native(surface, data, pitches, dst);
}
