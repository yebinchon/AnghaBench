
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef int dsl_dataset_t ;


 int SPA_FEATURE_REDACTED_DATASETS ;
 int ZPROP_VALUE ;
 scalar_t__ dsl_dataset_get_uint64_array_feature (int *,int ,int *,int **) ;
 int fnvlist_add_uint64_array (int *,int ,int *,int ) ;

void
dsl_get_redact_snaps(dsl_dataset_t *ds, nvlist_t *propval)
{
 uint64_t nsnaps;
 uint64_t *snaps;
 if (dsl_dataset_get_uint64_array_feature(ds,
     SPA_FEATURE_REDACTED_DATASETS, &nsnaps, &snaps)) {
  fnvlist_add_uint64_array(propval, ZPROP_VALUE, snaps,
      nsnaps);
 }
}
