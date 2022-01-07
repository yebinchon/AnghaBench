
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int dummy; } ;


 int getmicrotime (struct timeval*) ;
 int vm ;
 int vmm_stat_copy (int ,int,int*,int *) ;

uint64_t *
xh_vm_get_stats(int vcpu, struct timeval *ret_tv, int *ret_entries)
{
 static uint64_t statbuf[64];
 struct timeval tv;
 int re;
 int error;

 getmicrotime(&tv);
 error = vmm_stat_copy(vm, vcpu, &re, ((uint64_t *) &statbuf));

 if (error == 0) {
  if (ret_entries) {
   *ret_entries = re;
  }
  if (ret_tv) {
   *ret_tv = tv;
  }
  return (((uint64_t *) &statbuf));
 } else {
  return (((void*)0));
 }
}
