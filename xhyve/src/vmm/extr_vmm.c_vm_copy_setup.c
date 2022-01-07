
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vm_copyinfo {size_t gpa; size_t len; void* hva; } ;
struct vm {int dummy; } ;


 int EFAULT ;
 int KASSERT (int,char*) ;
 size_t XHYVE_PAGE_MASK ;
 scalar_t__ XHYVE_PAGE_SIZE ;
 int bzero (struct vm_copyinfo*,int) ;
 size_t min (size_t,scalar_t__) ;
 int vm_copy_teardown (struct vm*,int,struct vm_copyinfo*,int) ;
 int vm_gla2gpa (struct vm*,int,struct vm_guest_paging*,size_t,int,size_t*,int*) ;
 void* vm_gpa2hva (struct vm*,size_t,size_t) ;

int
vm_copy_setup(struct vm *vm, int vcpuid, struct vm_guest_paging *paging,
    uint64_t gla, size_t len, int prot, struct vm_copyinfo *copyinfo,
    int num_copyinfo, int *fault)
{
 int error, idx, nused;
 size_t n, off, remaining;
 void *hva;
 uint64_t gpa;

 bzero(copyinfo, sizeof(struct vm_copyinfo) * ((unsigned) num_copyinfo));

 nused = 0;
 remaining = len;
 while (remaining > 0) {
  KASSERT(nused < num_copyinfo, ("insufficient vm_copyinfo"));
  error = vm_gla2gpa(vm, vcpuid, paging, gla, prot, &gpa, fault);
  if (error || *fault)
   return (error);
  off = gpa & XHYVE_PAGE_MASK;
  n = min(remaining, XHYVE_PAGE_SIZE - off);
  copyinfo[nused].gpa = gpa;
  copyinfo[nused].len = n;
  remaining -= n;
  gla += n;
  nused++;
 }

 for (idx = 0; idx < nused; idx++) {
  hva = vm_gpa2hva(vm, copyinfo[idx].gpa, copyinfo[idx].len);
  if (hva == ((void*)0))
   break;
  copyinfo[idx].hva = hva;
 }

 if (idx != nused) {
  vm_copy_teardown(vm, vcpuid, copyinfo, num_copyinfo);
  return (EFAULT);
 } else {
  *fault = 0;
  return (0);
 }
}
