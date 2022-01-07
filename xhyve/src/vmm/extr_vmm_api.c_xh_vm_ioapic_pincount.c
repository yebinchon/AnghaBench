
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vioapic_pincount (int ) ;
 int vm ;

int
xh_vm_ioapic_pincount(int *pincount)
{
 *pincount = vioapic_pincount(vm);
 return (0);
}
