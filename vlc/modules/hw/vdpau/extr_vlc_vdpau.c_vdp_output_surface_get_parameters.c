
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_get_parameters ) (int ,int *,int *,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRGBAFormat ;
typedef int VdpOutputSurface ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_GET_PARAMETERS ;
 int stub1 (int ,int *,int *,int *) ;

VdpStatus vdp_output_surface_get_parameters(const vdp_t *vdp,
    VdpOutputSurface surface, VdpRGBAFormat *fmt, uint32_t *w, uint32_t *h)
{
    CHECK_FUNC(OUTPUT_SURFACE_GET_PARAMETERS);
    return vdp->vt.output_surface_get_parameters(surface, fmt, w, h);
}
