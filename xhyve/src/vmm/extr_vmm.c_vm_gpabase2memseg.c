
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vm_memory_segment {scalar_t__ gpa; int len; } ;
struct vm {int num_mem_segs; TYPE_1__* mem_segs; } ;
struct TYPE_2__ {scalar_t__ gpa; int len; } ;



int
vm_gpabase2memseg(struct vm *vm, uint64_t gpabase,
    struct vm_memory_segment *seg)
{
 int i;

 for (i = 0; i < vm->num_mem_segs; i++) {
  if (gpabase == vm->mem_segs[i].gpa) {
   seg->gpa = vm->mem_segs[i].gpa;
   seg->len = vm->mem_segs[i].len;
   return (0);
  }
 }
 return (-1);
}
