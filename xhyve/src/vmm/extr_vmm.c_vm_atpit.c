
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vatpit* vatpit; } ;
struct vatpit {int dummy; } ;



struct vatpit *
vm_atpit(struct vm *vm)
{
 return (vm->vatpit);
}
