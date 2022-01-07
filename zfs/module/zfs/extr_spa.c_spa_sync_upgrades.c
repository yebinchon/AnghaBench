
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int zcs_bytes; } ;
struct TYPE_16__ {scalar_t__ ub_version; } ;
struct TYPE_15__ {scalar_t__ ub_version; } ;
struct TYPE_18__ {int spa_minref; TYPE_3__ spa_cksum_salt; int spa_meta_objset; TYPE_2__ spa_uberblock; TYPE_1__ spa_ubsync; TYPE_5__* spa_dsl_pool; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_19__ {int dp_config_rwlock; } ;
typedef TYPE_5__ dsl_pool_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int DMU_POOL_CHECKSUM_SALT ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 scalar_t__ ENOENT ;
 int FTAG ;
 int RW_WRITER ;
 int SPA_FEATURE_LZ4_COMPRESS ;
 scalar_t__ SPA_VERSION_DIR_CLONES ;
 scalar_t__ SPA_VERSION_FEATURES ;
 scalar_t__ SPA_VERSION_NEXT_CLONES ;
 scalar_t__ SPA_VERSION_ORIGIN ;
 int VERIFY0 (int ) ;
 int dsl_pool_create_origin (TYPE_5__*,int *) ;
 int dsl_pool_upgrade_clones (TYPE_5__*,int *) ;
 int dsl_pool_upgrade_dir_clones (TYPE_5__*,int *) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int spa_feature_create_zap_objects (TYPE_4__*,int *) ;
 int spa_feature_incr (TYPE_4__*,int ,int *) ;
 scalar_t__ spa_feature_is_active (TYPE_4__*,int ) ;
 scalar_t__ spa_feature_is_enabled (TYPE_4__*,int ) ;
 int spa_sync_pass (TYPE_4__*) ;
 int zap_add (int ,int ,int ,int,int,int ,int *) ;
 scalar_t__ zap_contains (int ,int ,int ) ;

__attribute__((used)) static void
spa_sync_upgrades(spa_t *spa, dmu_tx_t *tx)
{
 if (spa_sync_pass(spa) != 1)
  return;

 dsl_pool_t *dp = spa->spa_dsl_pool;
 rrw_enter(&dp->dp_config_rwlock, RW_WRITER, FTAG);

 if (spa->spa_ubsync.ub_version < SPA_VERSION_ORIGIN &&
     spa->spa_uberblock.ub_version >= SPA_VERSION_ORIGIN) {
  dsl_pool_create_origin(dp, tx);


  spa->spa_minref += 3;
 }

 if (spa->spa_ubsync.ub_version < SPA_VERSION_NEXT_CLONES &&
     spa->spa_uberblock.ub_version >= SPA_VERSION_NEXT_CLONES) {
  dsl_pool_upgrade_clones(dp, tx);
 }

 if (spa->spa_ubsync.ub_version < SPA_VERSION_DIR_CLONES &&
     spa->spa_uberblock.ub_version >= SPA_VERSION_DIR_CLONES) {
  dsl_pool_upgrade_dir_clones(dp, tx);


  spa->spa_minref += 3;
 }

 if (spa->spa_ubsync.ub_version < SPA_VERSION_FEATURES &&
     spa->spa_uberblock.ub_version >= SPA_VERSION_FEATURES) {
  spa_feature_create_zap_objects(spa, tx);
 }







 if (spa->spa_uberblock.ub_version >= SPA_VERSION_FEATURES) {
  boolean_t lz4_en = spa_feature_is_enabled(spa,
      SPA_FEATURE_LZ4_COMPRESS);
  boolean_t lz4_ac = spa_feature_is_active(spa,
      SPA_FEATURE_LZ4_COMPRESS);

  if (lz4_en && !lz4_ac)
   spa_feature_incr(spa, SPA_FEATURE_LZ4_COMPRESS, tx);
 }






 if (zap_contains(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_CHECKSUM_SALT) == ENOENT) {
  VERIFY0(zap_add(spa->spa_meta_objset,
      DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_CHECKSUM_SALT, 1,
      sizeof (spa->spa_cksum_salt.zcs_bytes),
      spa->spa_cksum_salt.zcs_bytes, tx));
 }

 rrw_exit(&dp->dp_config_rwlock, FTAG);
}
