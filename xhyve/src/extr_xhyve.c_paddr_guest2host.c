
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xh_vm_map_gpa (uintptr_t,size_t) ;

void *
paddr_guest2host(uintptr_t gaddr, size_t len)
{
 return (xh_vm_map_gpa(gaddr, len));
}
