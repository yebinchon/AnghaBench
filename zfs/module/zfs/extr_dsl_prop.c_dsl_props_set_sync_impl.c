
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef char const uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int intval ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 scalar_t__ DATA_TYPE_BOOLEAN ;
 scalar_t__ DATA_TYPE_NVLIST ;
 scalar_t__ DATA_TYPE_STRING ;
 scalar_t__ DATA_TYPE_UINT64 ;
 int ZPROP_VALUE ;
 int dsl_prop_set_sync_impl (int *,char const*,int ,int,int,char const*,int *) ;
 int * fnvlist_lookup_nvpair (int *,int ) ;
 int * fnvpair_value_nvlist (int *) ;
 char* fnvpair_value_string (int *) ;
 char fnvpair_value_uint64 (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int panic (char*) ;
 int strlen (char const*) ;

void
dsl_props_set_sync_impl(dsl_dataset_t *ds, zprop_source_t source,
    nvlist_t *props, dmu_tx_t *tx)
{
 nvpair_t *elem = ((void*)0);

 while ((elem = nvlist_next_nvpair(props, elem)) != ((void*)0)) {
  nvpair_t *pair = elem;
  const char *name = nvpair_name(pair);

  if (nvpair_type(pair) == DATA_TYPE_NVLIST) {







   nvlist_t *attrs = fnvpair_value_nvlist(pair);
   pair = fnvlist_lookup_nvpair(attrs, ZPROP_VALUE);
  }

  if (nvpair_type(pair) == DATA_TYPE_STRING) {
   const char *value = fnvpair_value_string(pair);
   dsl_prop_set_sync_impl(ds, name,
       source, 1, strlen(value) + 1, value, tx);
  } else if (nvpair_type(pair) == DATA_TYPE_UINT64) {
   uint64_t intval = fnvpair_value_uint64(pair);
   dsl_prop_set_sync_impl(ds, name,
       source, sizeof (intval), 1, &intval, tx);
  } else if (nvpair_type(pair) == DATA_TYPE_BOOLEAN) {
   dsl_prop_set_sync_impl(ds, name,
       source, 0, 0, ((void*)0), tx);
  } else {
   panic("invalid nvpair type");
  }
 }
}
