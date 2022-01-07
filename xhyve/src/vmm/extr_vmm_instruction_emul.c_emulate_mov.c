
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; size_t reg; int immediate; TYPE_1__ op; } ;
typedef int (* mem_region_write_t ) (void*,int,int,int,int,void*) ;
typedef int (* mem_region_read_t ) (void*,int,int,int*,int,void*) ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int EINVAL ;
 int VM_REG_GUEST_RAX ;
 int* gpr_map ;
 int* size2mask ;
 int vie_read_bytereg (void*,int,struct vie*,int*) ;
 int vie_read_register (void*,int,int,int*) ;
 int vie_update_register (void*,int,int,int,int) ;
 int vie_write_bytereg (void*,int,struct vie*,int) ;

__attribute__((used)) static int
emulate_mov(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
     mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
 int error, size;
 enum vm_reg_name reg;
 uint8_t byte;
 uint64_t val;

 size = vie->opsize;
 error = EINVAL;

 switch (vie->op.op_byte) {
 case 0x88:





  size = 1;
  error = vie_read_bytereg(vm, vcpuid, vie, &byte);
  if (error == 0)
   error = memwrite(vm, vcpuid, gpa, byte, size, arg);
  break;
 case 0x89:






  reg = gpr_map[vie->reg];
  error = vie_read_register(vm, vcpuid, reg, &val);
  if (error == 0) {
   val &= size2mask[size];
   error = memwrite(vm, vcpuid, gpa, val, size, arg);
  }
  break;
 case 0x8A:





  size = 1;
  error = memread(vm, vcpuid, gpa, &val, size, arg);
  if (error == 0)
   error = vie_write_bytereg(vm, vcpuid, vie, ((uint8_t) val));
  break;
 case 0x8B:






  error = memread(vm, vcpuid, gpa, &val, size, arg);
  if (error == 0) {
   reg = gpr_map[vie->reg];
   error = vie_update_register(vm, vcpuid, reg, val, size);
  }
  break;
 case 0xA1:






  error = memread(vm, vcpuid, gpa, &val, size, arg);
  if (error == 0) {
   reg = VM_REG_GUEST_RAX;
   error = vie_update_register(vm, vcpuid, reg, val, size);
  }
  break;
 case 0xA3:






  error = vie_read_register(vm, vcpuid, VM_REG_GUEST_RAX, &val);
  if (error == 0) {
   val &= size2mask[size];
   error = memwrite(vm, vcpuid, gpa, val, size, arg);
  }
  break;
 case 0xC6:





  size = 1;
  error = memwrite(vm, vcpuid, gpa, ((uint64_t) vie->immediate), size,
   arg);
  break;
 case 0xC7:






  val = ((uint64_t) vie->immediate) & size2mask[size];
  error = memwrite(vm, vcpuid, gpa, val, size, arg);
  break;
 default:
  break;
 }

 return (error);
}
