
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_guest_paging {int dummy; } ;


 int vcpu_freeze (int,int) ;
 int vm ;
 int vm_gla2gpa (int ,int,struct vm_guest_paging*,int ,int,int *,int*) ;

int
xh_vm_gla2gpa(int vcpu, struct vm_guest_paging *paging, uint64_t gla,
 int prot, uint64_t *gpa, int *fault)
{
 int error;

 vcpu_freeze(vcpu, 1);
 error = vm_gla2gpa(vm, vcpu, paging, gla, prot, gpa, fault);
 vcpu_freeze(vcpu, 0);

 return (error);
}
