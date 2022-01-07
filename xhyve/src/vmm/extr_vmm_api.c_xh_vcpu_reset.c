
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR0_NE ;
 scalar_t__ SET_DESC (int ,int,int,int) ;
 scalar_t__ SET_REG (int ,int) ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_CR3 ;
 int VM_REG_GUEST_CR4 ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_FS ;
 int VM_REG_GUEST_GDTR ;
 int VM_REG_GUEST_GS ;
 int VM_REG_GUEST_IDTR ;
 int VM_REG_GUEST_LDTR ;
 int VM_REG_GUEST_RAX ;
 int VM_REG_GUEST_RBP ;
 int VM_REG_GUEST_RBX ;
 int VM_REG_GUEST_RCX ;
 int VM_REG_GUEST_RDI ;
 int VM_REG_GUEST_RDX ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_GUEST_RSI ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int VM_REG_GUEST_TR ;

int
xh_vcpu_reset(int vcpu)
{
 int error;




 if ((error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RFLAGS), (0x2))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RIP), (0xfff0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_CR0), (CR0_NE))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_CR3), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_CR4), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_CS), (0xf000))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_SS), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_DS), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_ES), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_FS), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_GS), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RAX), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RBX), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RCX), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RDX), (0xf00))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RSI), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RDI), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RBP), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_RSP), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_TR), (0))) ||
  (error = xh_vm_set_register(vcpu, (VM_REG_GUEST_LDTR), (0))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_CS), (0xffff0000), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_SS), (0), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_DS), (0), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_ES), (0), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_FS), (0), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_GS), (0), (0xffff), (0x0093))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_GDTR), (0), (0xffff), (0))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_IDTR), (0), (0xffff), (0))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_TR), (0), (0), (0x0000008b))) ||
  (error = xh_vm_set_desc(vcpu, (VM_REG_GUEST_LDTR), (0), (0xffff), (0x00000082))))
 {
  return (error);
 }

 return (0);
}
