
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* vimp_counts_object; } ;
typedef TYPE_1__ vdev_indirect_mapping_phys_t ;
typedef int uint64_t ;
struct TYPE_11__ {int os_spa; } ;
typedef TYPE_2__ objset_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {TYPE_1__* db_data; } ;
typedef TYPE_3__ dmu_buf_t ;


 int ASSERT (int ) ;
 int DMU_OTN_UINT32_METADATA ;
 int DMU_OTN_UINT64_METADATA ;
 int DMU_OT_NONE ;
 int FTAG ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VDEV_INDIRECT_MAPPING_SIZE_V0 ;
 int VERIFY0 (int ) ;
 int dmu_bonus_hold (TYPE_2__*,int,int ,TYPE_3__**) ;
 int dmu_buf_rele (TYPE_3__*,int ) ;
 int dmu_buf_will_dirty (TYPE_3__*,int *) ;
 void* dmu_object_alloc (TYPE_2__*,int ,int ,int ,int,int *) ;
 int dmu_tx_is_syncing (int *) ;
 int spa_feature_incr (int ,int ,int *) ;
 scalar_t__ spa_feature_is_enabled (int ,int ) ;

uint64_t
vdev_indirect_mapping_alloc(objset_t *os, dmu_tx_t *tx)
{
 uint64_t object;
 ASSERT(dmu_tx_is_syncing(tx));
 uint64_t bonus_size = VDEV_INDIRECT_MAPPING_SIZE_V0;

 if (spa_feature_is_enabled(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
  bonus_size = sizeof (vdev_indirect_mapping_phys_t);
 }

 object = dmu_object_alloc(os,
     DMU_OTN_UINT64_METADATA, SPA_OLD_MAXBLOCKSIZE,
     DMU_OTN_UINT64_METADATA, bonus_size,
     tx);

 if (spa_feature_is_enabled(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS)) {
  dmu_buf_t *dbuf;
  vdev_indirect_mapping_phys_t *vimp;

  VERIFY0(dmu_bonus_hold(os, object, FTAG, &dbuf));
  dmu_buf_will_dirty(dbuf, tx);
  vimp = dbuf->db_data;
  vimp->vimp_counts_object = dmu_object_alloc(os,
      DMU_OTN_UINT32_METADATA, SPA_OLD_MAXBLOCKSIZE,
      DMU_OT_NONE, 0, tx);
  spa_feature_incr(os->os_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
  dmu_buf_rele(dbuf, FTAG);
 }

 return (object);
}
