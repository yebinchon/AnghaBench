
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct vm_guest_paging {int dummy; } ;
struct user_segment_descriptor {int dummy; } ;
struct iovec {int dummy; } ;


 scalar_t__ ISLDT (int ) ;
 scalar_t__ SEL_LIMIT (int ) ;
 scalar_t__ SEL_START (int ) ;
 int VM_REG_GUEST_GDTR ;
 int VM_REG_GUEST_LDTR ;
 int XHYVE_PROT_READ ;
 int XHYVE_PROT_WRITE ;
 int assert (int) ;
 int nitems (struct iovec*) ;
 int xh_vm_copy_setup (int,struct vm_guest_paging*,scalar_t__,int,int ,struct iovec*,int ,int*) ;
 int xh_vm_copyin (struct iovec*,struct user_segment_descriptor*,int) ;
 int xh_vm_copyout (struct user_segment_descriptor*,struct iovec*,int) ;
 int xh_vm_get_desc (int,int,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
desc_table_rw(int vcpu, struct vm_guest_paging *paging,
    uint16_t sel, struct user_segment_descriptor *desc, bool doread,
    int *faultptr)
{
 struct iovec iov[2];
 uint64_t base;
 uint32_t limit, access;
 int error, reg;

 reg = ISLDT(sel) ? VM_REG_GUEST_LDTR : VM_REG_GUEST_GDTR;
 error = xh_vm_get_desc(vcpu, reg, &base, &limit, &access);
 assert(error == 0);
 assert(limit >= SEL_LIMIT(sel));

 error = xh_vm_copy_setup(vcpu, paging, base + SEL_START(sel),
     sizeof(*desc), doread ? XHYVE_PROT_READ : XHYVE_PROT_WRITE, iov, nitems(iov),
     faultptr);
 if (error || *faultptr)
  return (error);

 if (doread)
  xh_vm_copyin(iov, desc, sizeof(*desc));
 else
  xh_vm_copyout(desc, iov, sizeof(*desc));
 return (0);
}
