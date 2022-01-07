
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm {struct vcpu* vcpu; } ;
struct vcpu {int exitintinfo; } ;


 int EINVAL ;
 int VM_MAXCPU ;
 int vcpu_exception_intinfo (struct vcpu*) ;

int
vm_get_intinfo(struct vm *vm, int vcpuid, uint64_t *info1, uint64_t *info2)
{
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  return (EINVAL);

 vcpu = &vm->vcpu[vcpuid];
 *info1 = vcpu->exitintinfo;
 *info2 = vcpu_exception_intinfo(vcpu);
 return (0);
}
