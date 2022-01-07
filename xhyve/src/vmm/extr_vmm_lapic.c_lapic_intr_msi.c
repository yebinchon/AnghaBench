
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vm {int dummy; } ;


 int APIC_DELMODE_MASK ;
 int LAPIC_TRIG_EDGE ;
 int MSI_X86_ADDR_BASE ;
 int MSI_X86_ADDR_LOG ;
 int MSI_X86_ADDR_MASK ;
 int MSI_X86_ADDR_RH ;
 int VM_CTR1 (struct vm*,char*,int) ;
 int VM_CTR2 (struct vm*,char*,int,int) ;
 int VM_CTR3 (struct vm*,char*,char*,int,int) ;
 int vlapic_deliver_intr (struct vm*,int ,int,int,int,int) ;

int
lapic_intr_msi(struct vm *vm, uint64_t addr, uint64_t msg)
{
 int delmode, vec;
 uint32_t dest;
 bool phys;

 VM_CTR2(vm, "lapic MSI addr: %#llx msg: %#llx", addr, msg);

 if ((addr & MSI_X86_ADDR_MASK) != MSI_X86_ADDR_BASE) {
  VM_CTR1(vm, "lapic MSI invalid addr %#llx", addr);
  return (-1);
 }
 dest = (addr >> 12) & 0xff;
 phys = ((addr & (MSI_X86_ADDR_RH | MSI_X86_ADDR_LOG)) !=
     (MSI_X86_ADDR_RH | MSI_X86_ADDR_LOG));
 delmode = msg & APIC_DELMODE_MASK;
 vec = msg & 0xff;

 VM_CTR3(vm, "lapic MSI %s dest %#x, vec %d",
     phys ? "physical" : "logical", dest, vec);

 vlapic_deliver_intr(vm, LAPIC_TRIG_EDGE, dest, phys, delmode, vec);
 return (0);
}
