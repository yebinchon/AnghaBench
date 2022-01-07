
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 scalar_t__ ISLDT (int ) ;
 int SEG_DESC_PRESENT (scalar_t__) ;
 scalar_t__ SEG_DESC_UNUSABLE (scalar_t__) ;
 scalar_t__ SEL_LIMIT (int ) ;
 int VM_REG_GUEST_GDTR ;
 int VM_REG_GUEST_LDTR ;
 int assert (int) ;
 int xh_vm_get_desc (int,int,int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
desc_table_limit_check(int vcpu, uint16_t sel)
{
 uint64_t base;
 uint32_t limit, access;
 int error, reg;

 reg = ISLDT(sel) ? VM_REG_GUEST_LDTR : VM_REG_GUEST_GDTR;
 error = xh_vm_get_desc(vcpu, reg, &base, &limit, &access);
 assert(error == 0);

 if (reg == VM_REG_GUEST_LDTR) {
  if (SEG_DESC_UNUSABLE(access) || !SEG_DESC_PRESENT(access))
   return (-1);
 }

 if (limit < SEL_LIMIT(sel))
  return (-1);
 else
  return (0);
}
