
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;
struct TYPE_2__ {int fi_guid; } ;


 int B_FALSE ;
 int B_TRUE ;
 size_t SPA_FEATURE_ENCRYPTION ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int ZPOOL_PROP_VERSION ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 TYPE_1__* spa_feature_table ;
 int * zpool_get_features (int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;

__attribute__((used)) static boolean_t
encryption_feature_is_enabled(zpool_handle_t *zph)
{
 nvlist_t *features;
 uint64_t feat_refcount;


 if (zpool_get_prop_int(zph, ZPOOL_PROP_VERSION, ((void*)0))
     < SPA_VERSION_FEATURES)
  return (B_FALSE);


 features = zpool_get_features(zph);
 if (!features || nvlist_lookup_uint64(features,
     spa_feature_table[SPA_FEATURE_ENCRYPTION].fi_guid,
     &feat_refcount) != 0)
  return (B_FALSE);

 return (B_TRUE);
}
