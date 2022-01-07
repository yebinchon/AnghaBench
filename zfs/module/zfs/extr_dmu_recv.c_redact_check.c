
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
struct drr_begin {scalar_t__ drr_fromguid; int drr_toguid; int drr_versioninfo; } ;
typedef int dsl_dataset_t ;
struct TYPE_4__ {int drc_begin_nvl; struct drr_begin* drc_drrb; } ;
typedef TYPE_1__ dmu_recv_cookie_t ;
struct TYPE_5__ {TYPE_1__* drba_cookie; } ;
typedef TYPE_2__ dmu_recv_begin_arg_t ;
typedef int boolean_t ;


 int BEGINNV_REDACT_FROM_SNAPS ;
 int BEGINNV_REDACT_SNAPS ;
 int B_FALSE ;
 int B_TRUE ;
 int DMU_BACKUP_FEATURE_REDACTED ;
 int DMU_GET_FEATUREFLAGS (int ) ;
 int EINVAL ;
 int SPA_FEATURE_REDACTED_DATASETS ;
 int VERIFY (int ) ;
 int compatible_redact_snaps (int *,int ,int *,int ) ;
 int dsl_dataset_get_uint64_array_feature (int *,int ,int *,int **) ;
 int nvlist_lookup_uint64_array (int ,int ,int **,int *) ;
 int redact_snaps_contains (int *,int ,int ) ;

__attribute__((used)) static boolean_t
redact_check(dmu_recv_begin_arg_t *drba, dsl_dataset_t *origin)
{
 uint64_t *origin_snaps;
 uint64_t origin_num_snaps;
 dmu_recv_cookie_t *drc = drba->drba_cookie;
 struct drr_begin *drrb = drc->drc_drrb;
 int featureflags = DMU_GET_FEATUREFLAGS(drrb->drr_versioninfo);
 int err = 0;
 boolean_t ret = B_TRUE;
 uint64_t *redact_snaps;
 uint_t numredactsnaps;




 if (drrb->drr_fromguid == 0)
  return (ret);

 VERIFY(dsl_dataset_get_uint64_array_feature(origin,
     SPA_FEATURE_REDACTED_DATASETS, &origin_num_snaps, &origin_snaps));

 if (nvlist_lookup_uint64_array(drc->drc_begin_nvl,
     BEGINNV_REDACT_FROM_SNAPS, &redact_snaps, &numredactsnaps) ==
     0) {






  if (!compatible_redact_snaps(origin_snaps, origin_num_snaps,
      redact_snaps, numredactsnaps)) {
   err = EINVAL;
  }
 } else if (featureflags & DMU_BACKUP_FEATURE_REDACTED) {






  err = nvlist_lookup_uint64_array(drc->drc_begin_nvl,
      BEGINNV_REDACT_SNAPS, &redact_snaps, &numredactsnaps);

  if (err != 0 || !compatible_redact_snaps(origin_snaps,
      origin_num_snaps, redact_snaps, numredactsnaps)) {
   err = EINVAL;
  }
 } else if (!redact_snaps_contains(origin_snaps, origin_num_snaps,
     drrb->drr_toguid)) {






  err = EINVAL;
 }

 if (err != 0)
  ret = B_FALSE;
 return (ret);
}
