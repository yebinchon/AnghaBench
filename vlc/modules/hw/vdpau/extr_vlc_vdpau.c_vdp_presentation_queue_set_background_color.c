
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* presentation_queue_set_background_color ) (int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpPresentationQueue ;
typedef int VdpColor ;


 int CHECK_FUNC (int ) ;
 int PRESENTATION_QUEUE_SET_BACKGROUND_COLOR ;
 int stub1 (int ,int *) ;

VdpStatus vdp_presentation_queue_set_background_color(const vdp_t *vdp,
    VdpPresentationQueue queue, const VdpColor *color)
{
    VdpColor bak = *color;
    CHECK_FUNC(PRESENTATION_QUEUE_SET_BACKGROUND_COLOR);
    return vdp->vt.presentation_queue_set_background_color(queue, &bak);
}
