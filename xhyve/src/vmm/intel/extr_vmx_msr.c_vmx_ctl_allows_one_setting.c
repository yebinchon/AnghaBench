
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool
vmx_ctl_allows_one_setting(uint64_t msr_val, int bitpos)
{
 if (msr_val & (1UL << (bitpos + 32)))
  return (TRUE);
 else
  return (FALSE);
}
