
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct feature_type_uint64_array_arg {int array; scalar_t__ length; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {int ds_object; struct feature_type_uint64_array_arg** ds_feature; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int KM_SLEEP ;
 size_t SPA_FEATURE_REDACTED_DATASETS ;
 int bcopy (int*,int ,int) ;
 int dsl_dataset_activate_feature (int,size_t,struct feature_type_uint64_array_arg*,int *) ;
 int kmem_alloc (int,int ) ;
 struct feature_type_uint64_array_arg* kmem_zalloc (int,int ) ;

void
dsl_dataset_activate_redaction(dsl_dataset_t *ds, uint64_t *redact_snaps,
    uint64_t num_redact_snaps, dmu_tx_t *tx)
{
 uint64_t dsobj = ds->ds_object;
 struct feature_type_uint64_array_arg *ftuaa =
     kmem_zalloc(sizeof (*ftuaa), KM_SLEEP);
 ftuaa->length = (int64_t)num_redact_snaps;
 if (num_redact_snaps > 0) {
  ftuaa->array = kmem_alloc(num_redact_snaps * sizeof (uint64_t),
      KM_SLEEP);
  bcopy(redact_snaps, ftuaa->array, num_redact_snaps *
      sizeof (uint64_t));
 }
 dsl_dataset_activate_feature(dsobj, SPA_FEATURE_REDACTED_DATASETS,
     ftuaa, tx);
 ds->ds_feature[SPA_FEATURE_REDACTED_DATASETS] = ftuaa;
}
