
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int free (void*) ;
 int hv_vm_unmap (int ,size_t) ;

void
vmm_mem_free(uint64_t gpa, size_t size, void *object)
{
 hv_vm_unmap(gpa, size);
 free(object);
}
