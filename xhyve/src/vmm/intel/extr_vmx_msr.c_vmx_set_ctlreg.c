
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int hv_vmx_capability_t ;


 int EINVAL ;
 int fprintf (int ,char*,int,int) ;
 scalar_t__ hv_vmx_read_capability (int,int *) ;
 int stderr ;
 int vmx_ctl_allows_one_setting (int ,int) ;
 int vmx_ctl_allows_zero_setting (int ,int) ;

int vmx_set_ctlreg(hv_vmx_capability_t cap_field, uint32_t ones_mask,
 uint32_t zeros_mask, uint32_t *retval)
{
 int i;
 uint64_t cap;
 bool one_allowed, zero_allowed;


 if ((ones_mask ^ zeros_mask) != (ones_mask | zeros_mask)) {
  return EINVAL;
 }

 if (hv_vmx_read_capability(cap_field, &cap)) {
  return EINVAL;
 }

 for (i = 0; i < 32; i++) {
  one_allowed = vmx_ctl_allows_one_setting(cap, i);
  zero_allowed = vmx_ctl_allows_zero_setting(cap, i);

  if (zero_allowed && !one_allowed) {

   if (ones_mask & (1 << i)) {
    fprintf(stderr,
     "vmx_set_ctlreg: cap_field: %d bit: %d must be zero\n",
     cap_field, i);
    return (EINVAL);
   }
   *retval &= ~(1 << i);
  } else if (one_allowed && !zero_allowed) {

   if (zeros_mask & (1 << i)) {
    fprintf(stderr,
     "vmx_set_ctlreg: cap_field: %d bit: %d must be one\n",
     cap_field, i);
    return (EINVAL);
   }
   *retval |= 1 << i;
  } else {

   if (zeros_mask & (1 << i)){
    *retval &= ~(1 << i);
   } else if (ones_mask & (1 << i)) {
    *retval |= 1 << i;
   } else {

    fprintf(stderr,
     "vmx_set_ctlreg: cap_field: %d bit: %d unspecified "
     "don't care\n", cap_field, i);
    return (EINVAL);
   }
  }
 }

 return (0);
}
