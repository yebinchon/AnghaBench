
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int sus_blocklimit; } ;
struct TYPE_8__ {TYPE_1__ spa_unflushed_stats; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT0 (int ) ;
 int MAX (int,int ) ;
 int MIN (int ,int ) ;
 int SPA_FEATURE_LOG_SPACEMAP ;
 int spa_feature_is_active (TYPE_2__*,int ) ;
 int spa_log_sm_blocklimit (TYPE_2__*) ;
 int spa_total_metaslabs (TYPE_2__*) ;
 int zfs_unflushed_log_block_max ;
 int zfs_unflushed_log_block_min ;
 int zfs_unflushed_log_block_pct ;

void
spa_log_sm_set_blocklimit(spa_t *spa)
{
 if (!spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP)) {
  ASSERT0(spa_log_sm_blocklimit(spa));
  return;
 }

 uint64_t calculated_limit =
     (spa_total_metaslabs(spa) * zfs_unflushed_log_block_pct) / 100;
 spa->spa_unflushed_stats.sus_blocklimit = MIN(MAX(calculated_limit,
     zfs_unflushed_log_block_min), zfs_unflushed_log_block_max);
}
