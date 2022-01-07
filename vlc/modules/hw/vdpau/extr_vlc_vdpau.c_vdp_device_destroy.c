
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_destroy ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpDevice ;


 int CHECK_FUNC (int ) ;
 int DEVICE_DESTROY ;
 int stub1 (int ) ;

VdpStatus vdp_device_destroy(const vdp_t *vdp, VdpDevice device)
{
    CHECK_FUNC(DEVICE_DESTROY);
    return vdp->vt.device_destroy(device);
}
