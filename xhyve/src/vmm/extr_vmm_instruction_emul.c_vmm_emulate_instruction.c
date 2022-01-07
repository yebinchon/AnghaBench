
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct TYPE_2__ {int op_type; } ;
struct vie {TYPE_1__ op; int decoded; } ;
typedef int mem_region_write_t ;
typedef int mem_region_read_t ;


 int EINVAL ;
 int emulate_and (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_bittest (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_cmp (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_group1 (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;
 int emulate_mov (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_movs (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;
 int emulate_movx (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_or (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_pop (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;
 int emulate_push (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;
 int emulate_stos (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;
 int emulate_sub (void*,int,int ,struct vie*,int ,int ,void*) ;

int
vmm_emulate_instruction(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    struct vm_guest_paging *paging, mem_region_read_t memread,
    mem_region_write_t memwrite, void *memarg)
{
 int error;

 if (!vie->decoded)
  return (EINVAL);

 switch (vie->op.op_type) {
 case 137:
  error = emulate_group1(vm, vcpuid, gpa, vie, paging, memread,
      memwrite, memarg);
  break;
 case 131:
  error = emulate_pop(vm, vcpuid, gpa, vie, paging, memread,
      memwrite, memarg);
  break;
 case 130:
  error = emulate_push(vm, vcpuid, gpa, vie, paging, memread,
      memwrite, memarg);
  break;
 case 138:
  error = emulate_cmp(vm, vcpuid, gpa, vie,
        memread, memwrite, memarg);
  break;
 case 136:
  error = emulate_mov(vm, vcpuid, gpa, vie,
        memread, memwrite, memarg);
  break;
 case 134:
 case 133:
  error = emulate_movx(vm, vcpuid, gpa, vie,
         memread, memwrite, memarg);
  break;
 case 135:
  error = emulate_movs(vm, vcpuid, gpa, vie, paging, memread,
      memwrite, memarg);
  break;
 case 129:
  error = emulate_stos(vm, vcpuid, gpa, vie, paging, memread,
      memwrite, memarg);
  break;
 case 140:
  error = emulate_and(vm, vcpuid, gpa, vie,
        memread, memwrite, memarg);
  break;
 case 132:
  error = emulate_or(vm, vcpuid, gpa, vie,
        memread, memwrite, memarg);
  break;
 case 128:
  error = emulate_sub(vm, vcpuid, gpa, vie,
        memread, memwrite, memarg);
  break;
 case 139:
  error = emulate_bittest(vm, vcpuid, gpa, vie,
      memread, memwrite, memarg);
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
