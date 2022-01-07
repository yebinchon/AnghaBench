
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* presentation_queue_display ) (int ,int ,int ,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int uint32_t ;
typedef int VdpTime ;
typedef int VdpStatus ;
typedef int VdpPresentationQueue ;
typedef int VdpOutputSurface ;


 int CHECK_FUNC (int ) ;
 int PRESENTATION_QUEUE_DISPLAY ;
 int stub1 (int ,int ,int ,int ,int ) ;

VdpStatus vdp_presentation_queue_display(const vdp_t *vdp,
    VdpPresentationQueue queue, VdpOutputSurface surface, uint32_t clip_width,
    uint32_t clip_height, VdpTime pts)
{
    CHECK_FUNC(PRESENTATION_QUEUE_DISPLAY);
    return vdp->vt.presentation_queue_display(queue, surface, clip_width,
                                              clip_height, pts);
}
