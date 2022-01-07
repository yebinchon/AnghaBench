
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* presentation_queue_get_time ) (int ,int *) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpTime ;
typedef int VdpStatus ;
typedef int VdpPresentationQueue ;


 int CHECK_FUNC (int ) ;
 int PRESENTATION_QUEUE_GET_TIME ;
 int stub1 (int ,int *) ;

VdpStatus vdp_presentation_queue_get_time(const vdp_t *vdp,
    VdpPresentationQueue queue, VdpTime *current_time)
{
    CHECK_FUNC(PRESENTATION_QUEUE_GET_TIME);
    return vdp->vt.presentation_queue_get_time(queue, current_time);
}
