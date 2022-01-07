
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int vcpu_freeze_all (int) ;
 int vm ;
 int vm_get_memobj (int ,scalar_t__,size_t,scalar_t__*,void**) ;
 int vm_malloc (int ,scalar_t__,size_t,scalar_t__) ;

__attribute__((used)) static int
setup_memory_segment(uint64_t gpa, size_t len, uint64_t prot, void **addr)
{
 void *object;
 uint64_t offset;
 int error;

 vcpu_freeze_all(1);
 error = vm_malloc(vm, gpa, len, prot);
 if (error == 0) {
  error = vm_get_memobj(vm, gpa, len, &offset, &object);
  if (error == 0) {
   *addr = (void *) (((uintptr_t) object) + offset);
  }
 }
 vcpu_freeze_all(0);
 return (error);
}
