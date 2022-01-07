
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int vm_get_register (void*,int,int,int *) ;

__attribute__((used)) static int
vie_read_register(void *vm, int vcpuid, enum vm_reg_name reg, uint64_t *rval)
{
 int error;

 error = vm_get_register(vm, vcpuid, (int) reg, rval);

 return (error);
}
