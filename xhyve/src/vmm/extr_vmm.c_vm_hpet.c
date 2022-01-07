
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vhpet* vhpet; } ;
struct vhpet {int dummy; } ;



struct vhpet *
vm_hpet(struct vm *vm)
{

 return (vm->vhpet);
}
