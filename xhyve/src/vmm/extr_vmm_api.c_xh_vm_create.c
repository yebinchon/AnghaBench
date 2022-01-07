
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 unsigned long long lowmem_limit ;
 scalar_t__ memflags ;
 int * vm ;
 int vm_create (int **) ;
 int vmm_init () ;

int
xh_vm_create(void)
{
 int error;

 if (vm != ((void*)0)) {
  return (EEXIST);
 }

 error = vmm_init();

 if (error != 0) {
  return (error);
 }

 memflags = 0;
 lowmem_limit = (3ull << 30);

 return (vm_create(&vm));
}
