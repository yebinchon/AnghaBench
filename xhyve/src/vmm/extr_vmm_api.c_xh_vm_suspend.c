
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;


 int vm ;
 int vm_suspend (int ,int) ;

int
xh_vm_suspend(enum vm_suspend_how how)
{
 return (vm_suspend(vm, how));
}
