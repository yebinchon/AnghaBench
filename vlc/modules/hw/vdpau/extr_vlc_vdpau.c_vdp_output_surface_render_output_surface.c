
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* output_surface_render_output_surface ) (int ,int const*,int ,int const*,int const*,int const* const,int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRect ;
typedef int VdpOutputSurfaceRenderBlendState ;
typedef int VdpOutputSurface ;
typedef int VdpColor ;


 int CHECK_FUNC (int ) ;
 int OUTPUT_SURFACE_RENDER_OUTPUT_SURFACE ;
 int stub1 (int ,int const*,int ,int const*,int const*,int const* const,int ) ;

VdpStatus vdp_output_surface_render_output_surface(const vdp_t *vdp,
    VdpOutputSurface dst_surface, const VdpRect *dst_rect,
    VdpOutputSurface src_surface, const VdpRect *src_rect,
    const VdpColor *colors,
    const VdpOutputSurfaceRenderBlendState *const state, uint32_t flags)
{
    CHECK_FUNC(OUTPUT_SURFACE_RENDER_OUTPUT_SURFACE);
    return vdp->vt.output_surface_render_output_surface(dst_surface, dst_rect,
        src_surface, src_rect, colors, state, flags);
}
