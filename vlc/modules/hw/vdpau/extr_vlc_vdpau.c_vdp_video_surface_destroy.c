
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_surface_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;


 int CHECK_FUNC (int ) ;
 int VIDEO_SURFACE_DESTROY ;
 int stub1 (int ) ;

VdpStatus vdp_video_surface_destroy(const vdp_t *vdp, VdpVideoSurface surface)
{
    CHECK_FUNC(VIDEO_SURFACE_DESTROY);
    return vdp->vt.video_surface_destroy(surface);
}
