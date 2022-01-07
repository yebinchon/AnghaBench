
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct dmu_send_params {scalar_t__ resumeobj; scalar_t__ resumeoff; int * redactbook; scalar_t__ rawok; scalar_t__ compressok; scalar_t__ embedok; scalar_t__ large_block_ok; TYPE_2__* dp; int * to_ds; } ;
struct TYPE_6__ {scalar_t__ os_encrypted; } ;
typedef TYPE_1__ objset_t ;
struct TYPE_7__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dsl_dataset_t ;


 scalar_t__ DMU_BACKUP_FEATURE_COMPRESSED ;
 scalar_t__ DMU_BACKUP_FEATURE_EMBED_DATA ;
 scalar_t__ DMU_BACKUP_FEATURE_LARGE_BLOCKS ;
 scalar_t__ DMU_BACKUP_FEATURE_LARGE_DNODE ;
 scalar_t__ DMU_BACKUP_FEATURE_LZ4 ;
 scalar_t__ DMU_BACKUP_FEATURE_RAW ;
 scalar_t__ DMU_BACKUP_FEATURE_REDACTED ;
 scalar_t__ DMU_BACKUP_FEATURE_RESUMING ;
 scalar_t__ DMU_BACKUP_FEATURE_SA_SPILL ;
 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_EMBEDDED_DATA ;
 int SPA_FEATURE_LARGE_BLOCKS ;
 int SPA_FEATURE_LARGE_DNODE ;
 int SPA_FEATURE_LZ4_COMPRESS ;
 int ZFS_PROP_VERSION ;
 scalar_t__ ZPL_VERSION_SA ;
 scalar_t__ dmu_objset_type (TYPE_1__*) ;
 scalar_t__ dsl_dataset_feature_is_active (int *,int ) ;
 scalar_t__ spa_feature_is_active (int ,int ) ;
 scalar_t__ zfs_get_zplprop (TYPE_1__*,int ,scalar_t__*) ;

__attribute__((used)) static int
setup_featureflags(struct dmu_send_params *dspp, objset_t *os,
    uint64_t *featureflags)
{
 dsl_dataset_t *to_ds = dspp->to_ds;
 dsl_pool_t *dp = dspp->dp;
 if ((dspp->rawok || dspp->large_block_ok) &&
     dsl_dataset_feature_is_active(to_ds, SPA_FEATURE_LARGE_BLOCKS)) {
  *featureflags |= DMU_BACKUP_FEATURE_LARGE_BLOCKS;
 }


 if ((dspp->embedok || dspp->rawok) && !os->os_encrypted &&
     spa_feature_is_active(dp->dp_spa, SPA_FEATURE_EMBEDDED_DATA)) {
  *featureflags |= DMU_BACKUP_FEATURE_EMBED_DATA;
 }


 if (dspp->compressok || dspp->rawok)
  *featureflags |= DMU_BACKUP_FEATURE_COMPRESSED;
 if (dspp->rawok && os->os_encrypted)
  *featureflags |= DMU_BACKUP_FEATURE_RAW;

 if ((*featureflags &
     (DMU_BACKUP_FEATURE_EMBED_DATA | DMU_BACKUP_FEATURE_COMPRESSED |
     DMU_BACKUP_FEATURE_RAW)) != 0 &&
     spa_feature_is_active(dp->dp_spa, SPA_FEATURE_LZ4_COMPRESS)) {
  *featureflags |= DMU_BACKUP_FEATURE_LZ4;
 }

 if (dspp->resumeobj != 0 || dspp->resumeoff != 0) {
  *featureflags |= DMU_BACKUP_FEATURE_RESUMING;
 }

 if (dspp->redactbook != ((void*)0)) {
  *featureflags |= DMU_BACKUP_FEATURE_REDACTED;
 }

 if (dsl_dataset_feature_is_active(to_ds, SPA_FEATURE_LARGE_DNODE)) {
  *featureflags |= DMU_BACKUP_FEATURE_LARGE_DNODE;
 }
 return (0);
}
