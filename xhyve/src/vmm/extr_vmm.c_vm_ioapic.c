
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vioapic* vioapic; } ;
struct vioapic {int dummy; } ;



struct vioapic *
vm_ioapic(struct vm *vm)
{

 return (vm->vioapic);
}
