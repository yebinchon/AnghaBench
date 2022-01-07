
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef void* uint16_t ;
struct vm_task_switch {scalar_t__ reason; } ;
struct tss32 {unsigned int tss_eflags; void* tss_eip; void* tss_gs; void* tss_fs; void* tss_ds; void* tss_ss; void* tss_cs; void* tss_es; void* tss_edi; void* tss_esi; void* tss_ebp; void* tss_esp; void* tss_ebx; void* tss_edx; void* tss_ecx; void* tss_eax; } ;
struct iovec {int dummy; } ;


 scalar_t__ GETREG (int,int ) ;
 scalar_t__ PSL_NT ;
 scalar_t__ TSR_IRET ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_FS ;
 int VM_REG_GUEST_GS ;
 int VM_REG_GUEST_RAX ;
 int VM_REG_GUEST_RBP ;
 int VM_REG_GUEST_RBX ;
 int VM_REG_GUEST_RCX ;
 int VM_REG_GUEST_RDI ;
 int VM_REG_GUEST_RDX ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RSI ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int xh_vm_copyout (struct tss32*,struct iovec*,int) ;

__attribute__((used)) static void
tss32_save(int vcpu, struct vm_task_switch *task_switch,
    uint32_t eip, struct tss32 *tss, struct iovec *iov)
{


 tss->tss_eax = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RAX);
 tss->tss_ecx = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RCX);
 tss->tss_edx = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RDX);
 tss->tss_ebx = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RBX);
 tss->tss_esp = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RSP);
 tss->tss_ebp = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RBP);
 tss->tss_esi = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RSI);
 tss->tss_edi = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RDI);


 tss->tss_es = (uint16_t) GETREG(vcpu, VM_REG_GUEST_ES);
 tss->tss_cs = (uint16_t) GETREG(vcpu, VM_REG_GUEST_CS);
 tss->tss_ss = (uint16_t) GETREG(vcpu, VM_REG_GUEST_SS);
 tss->tss_ds = (uint16_t) GETREG(vcpu, VM_REG_GUEST_DS);
 tss->tss_fs = (uint16_t) GETREG(vcpu, VM_REG_GUEST_FS);
 tss->tss_gs = (uint16_t) GETREG(vcpu, VM_REG_GUEST_GS);


 tss->tss_eflags = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RFLAGS);
 if (task_switch->reason == TSR_IRET)
  tss->tss_eflags &= ~((unsigned) PSL_NT);
 tss->tss_eip = eip;


 xh_vm_copyout(tss, iov, sizeof(struct tss32));
}
