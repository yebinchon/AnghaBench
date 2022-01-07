
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_proc_address ) (int ,int ,void**) ;} ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ vdp_t ;
typedef int VdpStatus ;
typedef int VdpFuncId ;
typedef int VdpDevice ;


 int CHECK_FUNC (int ) ;
 int GET_PROC_ADDRESS ;
 int stub1 (int ,int ,void**) ;

VdpStatus vdp_get_proc_address(const vdp_t *vdp, VdpDevice device,
    VdpFuncId func_id, void **func_ptr)
{
    CHECK_FUNC(GET_PROC_ADDRESS);
    return vdp->vt.get_proc_address(device, func_id, func_ptr);
}
