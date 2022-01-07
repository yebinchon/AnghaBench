
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_put_bits_indexed ) (int ,int ,void const* const*,int const*,int const*,int ,void const*) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRect ;
typedef int VdpOutputSurface ;
typedef int VdpIndexedFormat ;
typedef int VdpColorTableFormat ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_PUT_BITS_INDEXED ;
 int stub1 (int ,int ,void const* const*,int const*,int const*,int ,void const*) ;

VdpStatus vdp_output_surface_put_bits_indexed(const vdp_t *vdp,
    VdpOutputSurface surface, VdpIndexedFormat fmt, const void *const *data,
    const uint32_t *pitch, const VdpRect *dst,
    VdpColorTableFormat tabfmt, const void *tab)
{
    CHECK_FUNC(OUTPUT_SURFACE_PUT_BITS_INDEXED);
    return vdp->vt.output_surface_put_bits_indexed(surface, fmt, data, pitch,
                                                   dst, tabfmt, tab);
}
