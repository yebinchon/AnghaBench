
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bitmap_surface_create ) (int ,int ,int ,int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpStatus ;
typedef int VdpRGBAFormat ;
typedef int VdpDevice ;
typedef int VdpBool ;
typedef int VdpBitmapSurface ;


 int BITMAP_SURFACE_CREATE ;
 int CHECK_FUNC (int ) ;
 int stub1 (int ,int ,int ,int ,int ,int *) ;

VdpStatus vdp_bitmap_surface_create(const vdp_t *vdp, VdpDevice device,
    VdpRGBAFormat fmt, uint32_t w, uint32_t h, VdpBool fq,
    VdpBitmapSurface *surface)
{
    CHECK_FUNC(BITMAP_SURFACE_CREATE);
    return vdp->vt.bitmap_surface_create(device, fmt, w, h, fq, surface);
}
