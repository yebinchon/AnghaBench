
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_dataset_t ;
typedef int ds_hold_flags_t ;


 int DS_HOLD_FLAG_DECRYPT ;
 int dsl_dataset_rele (int *,void*) ;
 int dsl_dataset_remove_key_mapping (int *) ;

void
dsl_dataset_rele_flags(dsl_dataset_t *ds, ds_hold_flags_t flags, void *tag)
{
 if (flags & DS_HOLD_FLAG_DECRYPT)
  dsl_dataset_remove_key_mapping(ds);

 dsl_dataset_rele(ds, tag);
}
