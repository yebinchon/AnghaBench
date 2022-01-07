
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_4__ {int ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;


 int DEV_SCHEME_VERSION0 ;
 int FM_FMRI_AUTHORITY ;
 int FM_FMRI_DEV_ID ;
 int FM_FMRI_DEV_PATH ;
 int FM_FMRI_DEV_TGTPTLUN0 ;
 int FM_FMRI_SCHEME ;
 char const* FM_FMRI_SCHEME_DEV ;
 int FM_VERSION ;
 int atomic_inc_64 (int *) ;
 TYPE_3__ erpt_kstat_data ;
 int nvlist_add_nvlist (int *,int ,int *) ;
 int nvlist_add_string (int *,int ,char const*) ;
 int nvlist_add_uint8 (int *,int ,int) ;

void
fm_fmri_dev_set(nvlist_t *fmri_dev, int version, const nvlist_t *auth,
    const char *devpath, const char *devid, const char *tpl0)
{
 int err = 0;

 if (version != DEV_SCHEME_VERSION0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 err |= nvlist_add_uint8(fmri_dev, FM_VERSION, version);
 err |= nvlist_add_string(fmri_dev, FM_FMRI_SCHEME, FM_FMRI_SCHEME_DEV);

 if (auth != ((void*)0)) {
  err |= nvlist_add_nvlist(fmri_dev, FM_FMRI_AUTHORITY,
      (nvlist_t *)auth);
 }

 err |= nvlist_add_string(fmri_dev, FM_FMRI_DEV_PATH, devpath);

 if (devid != ((void*)0))
  err |= nvlist_add_string(fmri_dev, FM_FMRI_DEV_ID, devid);

 if (tpl0 != ((void*)0))
  err |= nvlist_add_string(fmri_dev, FM_FMRI_DEV_TGTPTLUN0, tpl0);

 if (err)
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);

}
