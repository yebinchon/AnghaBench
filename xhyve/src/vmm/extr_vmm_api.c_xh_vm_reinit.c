
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vcpu_freeze_all (int) ;
 int vm ;
 int vm_reinit (int ) ;

int
xh_vm_reinit(void)
{
 int error;

 vcpu_freeze_all(1);
 error = vm_reinit(vm);
 vcpu_freeze_all(0);

 return (error);
}
