
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; scalar_t__ immediate; TYPE_1__ op; } ;
typedef int (* mem_region_write_t ) (void*,int,int,int,int,void*) ;
typedef int (* mem_region_read_t ) (void*,int,int,int*,int,void*) ;


 int EINVAL ;
 int PSL_N ;
 int PSL_PF ;
 int PSL_Z ;
 scalar_t__ RFLAGS_STATUS_BITS ;
 int VM_REG_GUEST_RFLAGS ;
 int getcc (int,int,int ) ;
 int vie_read_register (void*,int,int ,int*) ;
 int vie_update_register (void*,int,int ,int,int) ;

__attribute__((used)) static int
emulate_or(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
     mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
 int error, size;
 uint64_t val1, result, rflags, rflags2;

 size = vie->opsize;
 result = 0;
 error = EINVAL;

 switch (vie->op.op_byte) {
 case 0x81:
 case 0x83:
                error = memread(vm, vcpuid, gpa, &val1, size, arg);
                if (error)
   break;





                result = val1 | ((uint64_t) vie->immediate);
                error = memwrite(vm, vcpuid, gpa, result, size, arg);
  break;
 default:
  break;
 }
 if (error)
  return (error);

 error = vie_read_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, &rflags);
 if (error)
  return (error);







 rflags2 = getcc(size, result, 0);
 rflags &= ~((uint64_t) RFLAGS_STATUS_BITS);
 rflags |= rflags2 & (PSL_PF | PSL_Z | PSL_N);

 error = vie_update_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, rflags, 8);
 return (error);
}
