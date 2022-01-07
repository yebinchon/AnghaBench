
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* presentation_queue_create ) (int ,int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpPresentationQueueTarget ;
typedef int VdpPresentationQueue ;
typedef int VdpDevice ;


 int CHECK_FUNC (int ) ;
 int PRESENTATION_QUEUE_CREATE ;
 int stub1 (int ,int ,int *) ;

VdpStatus vdp_presentation_queue_create(const vdp_t *vdp, VdpDevice device,
    VdpPresentationQueueTarget target, VdpPresentationQueue *queue)
{
    CHECK_FUNC(PRESENTATION_QUEUE_CREATE);
    return vdp->vt.presentation_queue_create(device, target, queue);
}
