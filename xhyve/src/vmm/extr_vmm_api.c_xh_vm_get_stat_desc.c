
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int desc ;


 scalar_t__ vmm_stat_desc_copy (int,char*,int) ;

const char *
xh_vm_get_stat_desc(int index)
{
 static char desc[128];

 if (vmm_stat_desc_copy(index, ((char *) &desc), sizeof(desc)) == 0) {
  return (desc);
 } else {
  return (((void*)0));
 }
}
