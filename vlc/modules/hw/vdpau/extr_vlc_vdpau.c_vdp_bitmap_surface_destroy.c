
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bitmap_surface_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpBitmapSurface ;


 int BITMAP_SURFACE_DESTROY ;
 int CHECK_FUNC (int ) ;
 int stub1 (int ) ;

VdpStatus vdp_bitmap_surface_destroy(const vdp_t *vdp,
                                     VdpBitmapSurface surface)
{
    CHECK_FUNC(BITMAP_SURFACE_DESTROY);
    return vdp->vt.bitmap_surface_destroy(surface);
}
