
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int cookie; } ;
struct seg_desc {int dummy; } ;


 int EINVAL ;
 int VMGETDESC (int ,int,int,struct seg_desc*) ;
 int VM_MAXCPU ;
 int is_descriptor_table (int) ;
 int is_segment_register (int) ;

int
vm_get_seg_desc(struct vm *vm, int vcpu, int reg,
  struct seg_desc *desc)
{
 if (vcpu < 0 || vcpu >= VM_MAXCPU)
  return (EINVAL);

 if (!is_segment_register(reg) && !is_descriptor_table(reg))
  return (EINVAL);

 return (VMGETDESC(vm->cookie, vcpu, reg, desc));
}
