
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_query_put_bits_indexed_capabilities ) (int ,int ,int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpRGBAFormat ;
typedef int VdpIndexedFormat ;
typedef int VdpDevice ;
typedef int VdpColorTableFormat ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_QUERY_PUT_BITS_INDEXED_CAPABILITIES ;
 int stub1 (int ,int ,int ,int ,int *) ;

VdpStatus vdp_output_surface_query_put_bits_indexed_capabilities(
    const vdp_t *vdp, VdpDevice device, VdpRGBAFormat fmt,
    VdpIndexedFormat idxfmt, VdpColorTableFormat colfmt, VdpBool *ok)
{
    CHECK_FUNC(OUTPUT_SURFACE_QUERY_PUT_BITS_INDEXED_CAPABILITIES);
    return vdp->vt.output_surface_query_put_bits_indexed_capabilities(device,
                                                      fmt, idxfmt, colfmt, ok);
}
