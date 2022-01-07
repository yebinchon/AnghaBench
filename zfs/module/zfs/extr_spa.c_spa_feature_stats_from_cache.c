
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int SPA_FEATURES ;
 int VERIFY0 (int ) ;
 scalar_t__ feature_get_refcount (int *,TYPE_1__*,int *) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 TYPE_1__* spa_feature_table ;

__attribute__((used)) static void
spa_feature_stats_from_cache(spa_t *spa, nvlist_t *features)
{
 int i;

 for (i = 0; i < SPA_FEATURES; i++) {
  zfeature_info_t feature = spa_feature_table[i];
  uint64_t refcount;

  if (feature_get_refcount(spa, &feature, &refcount) != 0)
   continue;

  VERIFY0(nvlist_add_uint64(features, feature.fi_guid, refcount));
 }
}
