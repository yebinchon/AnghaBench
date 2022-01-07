
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vcpu; int rip; } ;
struct TYPE_4__ {TYPE_1__ spinup_ap; } ;
struct vm_exit {TYPE_2__ u; } ;


 int VMEXIT_CONTINUE ;
 int assert (int) ;
 scalar_t__ guest_ncpus ;
 int vcpu_add (int,scalar_t__,int ) ;

__attribute__((used)) static int
vmexit_spinup_ap(struct vm_exit *vme, int *pvcpu)
{
 assert(vme->u.spinup_ap.vcpu != 0);
 assert(vme->u.spinup_ap.vcpu < guest_ncpus);

 vcpu_add(*pvcpu, vme->u.spinup_ap.vcpu, vme->u.spinup_ap.rip);

 return (VMEXIT_CONTINUE);
}
