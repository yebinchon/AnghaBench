
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* video_surface_create ) (int ,int ,int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;
typedef int VdpDevice ;
typedef int VdpChromaType ;


 int CHECK_FUNC (int ) ;
 int VIDEO_SURFACE_CREATE ;
 int stub1 (int ,int ,int ,int ,int *) ;

VdpStatus vdp_video_surface_create(const vdp_t *vdp, VdpDevice device,
    VdpChromaType chroma, uint32_t w, uint32_t h, VdpVideoSurface *surface)
{
    CHECK_FUNC(VIDEO_SURFACE_CREATE);
    return vdp->vt.video_surface_create(device, chroma, w, h, surface);
}
