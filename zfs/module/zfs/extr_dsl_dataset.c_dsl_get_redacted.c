
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dsl_dataset_t ;


 int SPA_FEATURE_REDACTED_DATASETS ;
 int dsl_dataset_feature_is_active (int *,int ) ;

uint64_t
dsl_get_redacted(dsl_dataset_t *ds)
{
 return (dsl_dataset_feature_is_active(ds,
     SPA_FEATURE_REDACTED_DATASETS));
}
