
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_query_get_put_bits_native_capabilities ) (int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpRGBAFormat ;
typedef int VdpDevice ;
typedef int VdpBool ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_QUERY_GET_PUT_BITS_NATIVE_CAPABILITIES ;
 int stub1 (int ,int ,int *) ;

VdpStatus vdp_output_surface_query_get_put_bits_native_capabilities(
    const vdp_t *vdp, VdpDevice device, VdpRGBAFormat fmt, VdpBool *ok)
{
    CHECK_FUNC(OUTPUT_SURFACE_QUERY_GET_PUT_BITS_NATIVE_CAPABILITIES);
    return vdp->vt.output_surface_query_get_put_bits_native_capabilities(
                                                              device, fmt, ok);
}
