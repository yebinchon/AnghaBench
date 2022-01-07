
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int hv_memory_flags_t ;


 int HV_MEMORY_EXEC ;
 int HV_MEMORY_READ ;
 int HV_MEMORY_WRITE ;
 int XHYVE_PROT_EXECUTE ;
 int XHYVE_PROT_READ ;
 int XHYVE_PROT_WRITE ;
 scalar_t__ hv_vm_map (void*,int,size_t,int ) ;
 void* valloc (size_t) ;
 int xhyve_abort (char*) ;

void *
vmm_mem_alloc(uint64_t gpa, size_t size, uint64_t prot)
{
 void *object;
    hv_memory_flags_t hvProt;

 object = valloc(size);

 if (!object) {
  xhyve_abort("vmm_mem_alloc failed\n");
 }

    hvProt = (prot & XHYVE_PROT_READ) ? HV_MEMORY_READ : 0;
    hvProt |= (prot & XHYVE_PROT_WRITE) ? HV_MEMORY_WRITE : 0;
    hvProt |= (prot & XHYVE_PROT_EXECUTE) ? HV_MEMORY_EXEC : 0;

 if (hv_vm_map(object, gpa, size, hvProt))
 {
  xhyve_abort("hv_vm_map failed\n");
 }

 return object;
}
