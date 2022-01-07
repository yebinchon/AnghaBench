
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int vhpet_getcap (int *) ;

int
xh_vm_get_hpet_capabilities(uint32_t *capabilities)
{
 return (vhpet_getcap(capabilities));
}
