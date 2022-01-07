
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ vhpet_capabilities () ;

int
vhpet_getcap(uint32_t *cap)
{
 *cap = (uint32_t) vhpet_capabilities();
 return (0);
}
