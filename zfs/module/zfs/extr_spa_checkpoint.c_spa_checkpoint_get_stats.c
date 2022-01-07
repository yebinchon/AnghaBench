
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sci_timestamp; int sci_dspace; } ;
struct TYPE_10__ {TYPE_1__ spa_checkpoint_info; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int pcs_start_time; int pcs_space; int pcs_state; } ;
typedef TYPE_3__ pool_checkpoint_stat_t ;


 int ASSERT (int) ;
 int CS_CHECKPOINT_DISCARDING ;
 int CS_CHECKPOINT_EXISTS ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ZPOOL_CHECKPOINT ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int ZFS_ERR_NO_CHECKPOINT ;
 int bzero (TYPE_3__*,int) ;
 int spa_feature_is_active (TYPE_2__*,int ) ;
 int spa_meta_objset (TYPE_2__*) ;
 int zap_contains (int ,int ,int ) ;

int
spa_checkpoint_get_stats(spa_t *spa, pool_checkpoint_stat_t *pcs)
{
 if (!spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (SET_ERROR(ZFS_ERR_NO_CHECKPOINT));

 bzero(pcs, sizeof (pool_checkpoint_stat_t));

 int error = zap_contains(spa_meta_objset(spa),
     DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_ZPOOL_CHECKPOINT);
 ASSERT(error == 0 || error == ENOENT);

 if (error == ENOENT)
  pcs->pcs_state = CS_CHECKPOINT_DISCARDING;
 else
  pcs->pcs_state = CS_CHECKPOINT_EXISTS;

 pcs->pcs_space = spa->spa_checkpoint_info.sci_dspace;
 pcs->pcs_start_time = spa->spa_checkpoint_info.sci_timestamp;

 return (0);
}
