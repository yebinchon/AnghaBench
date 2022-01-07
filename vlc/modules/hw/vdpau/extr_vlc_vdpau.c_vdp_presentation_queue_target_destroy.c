
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* presentation_queue_target_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpPresentationQueueTarget ;


 int CHECK_FUNC (int ) ;
 int PRESENTATION_QUEUE_TARGET_DESTROY ;
 int stub1 (int ) ;

VdpStatus vdp_presentation_queue_target_destroy(const vdp_t *vdp,
    VdpPresentationQueueTarget target)
{
    CHECK_FUNC(PRESENTATION_QUEUE_TARGET_DESTROY);
    return vdp->vt.presentation_queue_target_destroy(target);
}
