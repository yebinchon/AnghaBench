
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vm {int dummy; } ;


 scalar_t__ vm_get_memobj (struct vm*,scalar_t__,scalar_t__,scalar_t__*,void**) ;

void *
vm_gpa2hva(struct vm *vm, uint64_t gpa, uint64_t len) {
 void *base;
 uint64_t offset;

 if (vm_get_memobj(vm, gpa, len, &offset, &base)) {
  return ((void*)0);
 }

 return (void *) (((uintptr_t) base) + offset);
}
