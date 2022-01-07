
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct vm_guest_paging {int cpl; int cpu_mode; } ;
struct seg_desc {int access; int limit; int base; } ;
struct iovec {int dummy; } ;


 scalar_t__ GETREG (int,int ) ;
 int IDT_SS ;
 int SDT_SYS386BSY ;
 int SDT_SYS386TSS ;
 scalar_t__ SEG_DESC_DEF32 (int ) ;
 int SETREG (int,int ,scalar_t__) ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RSP ;
 int VM_REG_GUEST_SS ;
 int XHYVE_PROT_WRITE ;
 int assert (int) ;
 int nitems (struct iovec*) ;
 int sel_exception (int,int ,scalar_t__,int) ;
 scalar_t__ vie_alignment_check (int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ vie_calculate_gla (int ,int ,struct seg_desc*,scalar_t__,int,int,int ,scalar_t__*) ;
 int vm_inject_ac (int,int) ;
 int xh_vm_copy_setup (int,struct vm_guest_paging*,scalar_t__,size_t,int ,struct iovec*,int ,int*) ;
 int xh_vm_copyout (scalar_t__*,struct iovec*,size_t) ;
 int xh_vm_get_desc (int,int ,int *,int *,int *) ;

__attribute__((used)) static int
push_errcode(int vcpu, struct vm_guest_paging *paging, int task_type,
 uint32_t errcode, int *faultptr)
{
 struct iovec iov[2];
 struct seg_desc seg_desc;
 int stacksize, bytes, error;
 uint64_t gla, cr0, rflags;
 uint32_t esp;
 uint16_t stacksel;

 *faultptr = 0;

 cr0 = GETREG(vcpu, VM_REG_GUEST_CR0);
 rflags = GETREG(vcpu, VM_REG_GUEST_RFLAGS);
 stacksel = (uint16_t) GETREG(vcpu, VM_REG_GUEST_SS);

 error = xh_vm_get_desc(vcpu, VM_REG_GUEST_SS, &seg_desc.base,
     &seg_desc.limit, &seg_desc.access);
 assert(error == 0);






 if (task_type == SDT_SYS386BSY || task_type == SDT_SYS386TSS)
  bytes = 4;
 else
  bytes = 2;






 if (SEG_DESC_DEF32(seg_desc.access))
  stacksize = 4;
 else
  stacksize = 2;

 esp = (uint32_t) GETREG(vcpu, VM_REG_GUEST_RSP);
 esp -= (uint32_t) bytes;

 if (vie_calculate_gla(paging->cpu_mode, VM_REG_GUEST_SS, &seg_desc, esp,
  bytes, stacksize, XHYVE_PROT_WRITE, &gla))
 {
  sel_exception(vcpu, IDT_SS, stacksel, 1);
  *faultptr = 1;
  return (0);
 }

 if (vie_alignment_check(paging->cpl, bytes, cr0, rflags, gla)) {
  vm_inject_ac(vcpu, 1);
  *faultptr = 1;
  return (0);
 }

 error = xh_vm_copy_setup(vcpu, paging, gla, ((size_t) bytes),
  XHYVE_PROT_WRITE, iov, nitems(iov), faultptr);
 if (error || *faultptr)
  return (error);

 xh_vm_copyout(&errcode, iov, ((size_t) bytes));
 SETREG(vcpu, VM_REG_GUEST_RSP, esp);
 return (0);
}
