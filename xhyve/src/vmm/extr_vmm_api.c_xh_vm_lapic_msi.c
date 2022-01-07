
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int lapic_intr_msi (int ,int ,int ) ;
 int vm ;

int
xh_vm_lapic_msi(uint64_t addr, uint64_t msg)
{
 return (lapic_intr_msi(vm, addr, msg));
}
