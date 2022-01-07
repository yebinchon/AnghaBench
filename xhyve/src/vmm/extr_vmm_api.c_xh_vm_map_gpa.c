
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 scalar_t__ VM_MMAP_ALL ;
 int assert (int) ;
 size_t highmem ;
 scalar_t__ highmem_addr ;
 size_t lowmem ;
 scalar_t__ lowmem_addr ;
 scalar_t__ mmap_style ;

void *
xh_vm_map_gpa(uint64_t gpa, size_t len)
{
 assert(mmap_style == VM_MMAP_ALL);

 if ((gpa < lowmem) && (len <= lowmem) && ((gpa + len) <= lowmem)) {
  return ((void *) (((uintptr_t) lowmem_addr) + gpa));
 }

 if (gpa >= (4ull << 30)) {
  gpa -= (4ull << 30);
  if ((gpa < highmem) && (len <= highmem) && ((gpa + len) <= highmem)) {
   return ((void *) (((uintptr_t) highmem_addr) + gpa));
  }
 }

 return (((void*)0));
}
