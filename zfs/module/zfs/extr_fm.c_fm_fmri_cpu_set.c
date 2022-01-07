
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;


 int CPU_SCHEME_VERSION1 ;
 int FM_FMRI_AUTHORITY ;
 int FM_FMRI_CPU_ID ;
 int FM_FMRI_CPU_MASK ;
 int FM_FMRI_CPU_SERIAL_ID ;
 int FM_FMRI_SCHEME ;
 char* FM_FMRI_SCHEME_CPU ;
 int FM_VERSION ;
 int atomic_inc_64 (int *) ;
 TYPE_3__ erpt_kstat_data ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint32 (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint8 (int *,int ,int) ;

void
fm_fmri_cpu_set(nvlist_t *fmri_cpu, int version, const nvlist_t *auth,
    uint32_t cpu_id, uint8_t *cpu_maskp, const char *serial_idp)
{
 uint64_t *failedp = &erpt_kstat_data.fmri_set_failed.value.ui64;

 if (version < CPU_SCHEME_VERSION1) {
  atomic_inc_64(failedp);
  return;
 }

 if (nvlist_add_uint8(fmri_cpu, FM_VERSION, version) != 0) {
  atomic_inc_64(failedp);
  return;
 }

 if (nvlist_add_string(fmri_cpu, FM_FMRI_SCHEME,
     FM_FMRI_SCHEME_CPU) != 0) {
  atomic_inc_64(failedp);
  return;
 }

 if (auth != ((void*)0) && nvlist_add_nvlist(fmri_cpu, FM_FMRI_AUTHORITY,
     (nvlist_t *)auth) != 0)
  atomic_inc_64(failedp);

 if (nvlist_add_uint32(fmri_cpu, FM_FMRI_CPU_ID, cpu_id) != 0)
  atomic_inc_64(failedp);

 if (cpu_maskp != ((void*)0) && nvlist_add_uint8(fmri_cpu, FM_FMRI_CPU_MASK,
     *cpu_maskp) != 0)
  atomic_inc_64(failedp);

 if (serial_idp == ((void*)0) || nvlist_add_string(fmri_cpu,
     FM_FMRI_CPU_SERIAL_ID, (char *)serial_idp) != 0)
   atomic_inc_64(failedp);
}
