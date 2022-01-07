
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_memory_segment {size_t len; } ;


 int vm ;
 int vm_gpabase2memseg (int ,int ,struct vm_memory_segment*) ;

int
xh_vm_get_memory_seg(uint64_t gpa, size_t *ret_len)
{
 int error;

 struct vm_memory_segment seg;

 error = vm_gpabase2memseg(vm, gpa, &seg);

 if (error == 0) {
  *ret_len = seg.len;
 }

 return (error);
}
