
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vm ;
 int vm_inject_nmi (int ,int) ;

int
xh_vm_inject_nmi(int vcpu)
{
 return (vm_inject_nmi(vm, vcpu));
}
